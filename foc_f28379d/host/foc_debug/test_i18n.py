"""Unit tests for the GUI translation layer (pure stdlib, no Qt / no hardware).

The source scan is what keeps English and Portuguese in step: wrapping a new
string in ``tr()`` without adding it to ``i18n_pt.PT`` fails here, and so does
passing a fresh English literal straight to a Qt text setter.
"""

import ast
import pathlib
import re
import string
import unittest

from foc_debug import i18n
from foc_debug.i18n_pt import PT

PKG = pathlib.Path(__file__).resolve().parent
# Modules whose user-visible text goes through tr() / N_().
SCANNED = ("gui.py", "param_docs.py", "autotune.py")
MARKERS = ("tr", "N_")

# Qt text setters (and the status-bar report helper) -> index of the text
# argument. A literal reaching one of these without tr() is untranslated.
TEXT_SINKS = {
    "QLabel": 0, "QPushButton": 0, "QCheckBox": 0, "QGroupBox": 0,
    "QRadioButton": 0, "setText": 0, "setToolTip": 0, "setWindowTitle": 0,
    "setPlaceholderText": 0, "showMessage": 0, "addMenu": 0, "addAction": 0,
    "setInformativeText": 0, "addButton": 0, "addItem": 0, "addItems": 0,
    "setHorizontalHeaderLabels": 0, "_report": 0, "RuntimeError": 0,
    "addTab": 1, "getSaveFileName": 1, "getOpenFileName": 1, "setLabel": 1,
}
# Words that are identifiers or units, the same in both languages.
ALLOWED_WORDS = {
    "rpm", "Hz", "kHz", "ms", "Ld", "Lq", "Ts", "Km", "Vbus", "vbus", "Nm",
}
# Whole strings that stay as they are.
ALLOWED_STRINGS = {
    "Language / Idioma",        # bilingual on purpose: findable in either language
    "Jose Aristides Bail",
    "t (ms)",
}


def _call_name(node):
    f = node.func
    if isinstance(f, ast.Attribute):
        return f.attr
    if isinstance(f, ast.Name):
        return f.id
    return None


def _trees():
    for fn in SCANNED:
        yield fn, ast.parse((PKG / fn).read_text(encoding="utf-8"))


def _marker_calls():
    """(file, line, first-arg node) for every tr()/N_() call in SCANNED."""
    for fn, tree in _trees():
        for node in ast.walk(tree):
            if (isinstance(node, ast.Call) and _call_name(node) in MARKERS
                    and isinstance(node.func, ast.Name) and node.args):
                yield fn, node.lineno, node.args[0]


def _keys_used():
    return {a.value for _fn, _ln, a in _marker_calls()
            if isinstance(a, ast.Constant) and isinstance(a.value, str)}


def _fields(s):
    """Placeholder names of a format string (format spec ignored)."""
    return {name for _lit, name, _spec, _conv in string.Formatter().parse(s)
            if name is not None}


def _literal_texts(node):
    """String literals that end up in a sink argument (tr() calls excluded).

    f-strings yield their constant parts with ``{}`` for each value."""
    if isinstance(node, ast.Constant) and isinstance(node.value, str):
        yield node.value
    elif isinstance(node, ast.JoinedStr):
        yield "".join(v.value if isinstance(v, ast.Constant) else "{}"
                      for v in node.values)
    elif isinstance(node, ast.BinOp):
        yield from _literal_texts(node.left)
        yield from _literal_texts(node.right)
    elif isinstance(node, ast.IfExp):
        yield from _literal_texts(node.body)
        yield from _literal_texts(node.orelse)
    elif isinstance(node, (ast.List, ast.Tuple)):
        for e in node.elts:
            yield from _literal_texts(e)


def _needs_translation(text):
    if text in ALLOWED_STRINGS:
        return False
    plain = re.sub(r"<[^>]*>", "", text)          # HTML markup is not prose
    for word in re.findall(r"[A-Za-z][A-Za-z_]+", plain):
        if "_" in word or word in ALLOWED_WORDS:  # identifiers / units
            continue
        return True
    return False


class TestTr(unittest.TestCase):
    def tearDown(self):
        i18n.set_language("en")

    def test_english_is_identity(self):
        i18n.set_language("en")
        self.assertEqual(i18n.tr("Connect"), "Connect")
        self.assertEqual(i18n.tr("saved {path}", path="x.csv"), "saved x.csv")

    def test_portuguese_lookup_and_format(self):
        i18n.set_language("pt")
        self.assertEqual(i18n.tr("Connect"), "Conectar")
        self.assertEqual(i18n.tr("ping ok: {ms:.2f} ms round-trip", ms=1.234),
                         "ping ok: 1.23 ms ida e volta")

    def test_missing_key_falls_back_to_english(self):
        i18n.set_language("pt")
        self.assertEqual(i18n.tr("not a real key {x}", x=1), "not a real key 1")

    def test_no_kwargs_leaves_braces_alone(self):
        i18n.set_language("pt")
        self.assertEqual(i18n.tr("{literal}"), "{literal}")

    def test_unknown_language_falls_back(self):
        self.assertEqual(i18n.set_language("xx"), "en")
        self.assertEqual(i18n.set_language(None), "en")
        self.assertEqual(i18n.set_language(" PT "), "pt")

    def test_n_is_identity(self):
        i18n.set_language("pt")
        self.assertEqual(i18n.N_("too few samples"), "too few samples")


class TestCatalog(unittest.TestCase):
    def test_every_key_is_translated(self):
        missing = sorted(_keys_used() - PT.keys())
        self.assertEqual(missing, [], "add these to foc_debug/i18n_pt.py")

    def test_no_stale_translations(self):
        stale = sorted(PT.keys() - _keys_used())
        self.assertEqual(stale, [], "no tr()/N_() uses these any more")

    def test_placeholders_match(self):
        for en, pt in PT.items():
            with self.subTest(key=en):
                self.assertEqual(_fields(en), _fields(pt))

    def test_translations_are_non_empty(self):
        for en, pt in PT.items():
            with self.subTest(key=en):
                self.assertTrue(pt.strip() or not en.strip())

    def test_markers_take_literals(self):
        # tr(f"..."), tr("a" + b) or tr("a" "{}".format()) would hide the key
        # from the scan above. A bare name/attribute is fine: it re-translates
        # a value marked with N_() where it was written.
        bad = []
        for fn, ln, arg in _marker_calls():
            if isinstance(arg, ast.Constant) and isinstance(arg.value, str):
                continue
            if isinstance(arg, (ast.JoinedStr, ast.BinOp, ast.Constant)):
                bad.append(f"{fn}:{ln}")
        self.assertEqual(bad, [])


class TestNoUntranslatedText(unittest.TestCase):
    def test_qt_text_goes_through_tr(self):
        bad = []
        for fn, tree in _trees():
            for node in ast.walk(tree):
                if not isinstance(node, ast.Call):
                    continue
                idx = TEXT_SINKS.get(_call_name(node))
                if idx is None or len(node.args) <= idx:
                    continue
                for text in _literal_texts(node.args[idx]):
                    if _needs_translation(text):
                        bad.append(f"{fn}:{node.lineno} {text!r}")
        self.assertEqual(bad, [], "wrap these in tr() and add them to i18n_pt.py")

    def test_detector_itself(self):
        self.assertTrue(_needs_translation("Connect"))
        self.assertTrue(_needs_translation("{} samples"))
        self.assertFalse(_needs_translation("kp_d={}  ki_d={}"))
        self.assertFalse(_needs_translation("{} rpm"))
        self.assertFalse(_needs_translation("<b></b>"))
        self.assertFalse(_needs_translation("—"))


class TestGuiHelpers(unittest.TestCase):
    """The Qt-free language plumbing in gui.py."""

    @classmethod
    def setUpClass(cls):
        try:
            from foc_debug import gui
        except ImportError as e:   # pyserial missing outside the venv
            raise unittest.SkipTest(f"gui import failed: {e}")
        cls.gui = gui

    def test_resolve_language_precedence(self):
        r = self.gui.resolve_language
        self.assertEqual(r("pt", "en", "en_US"), "pt")      # --lang wins
        self.assertEqual(r(None, "pt", "en_US"), "pt")      # then the saved choice
        self.assertEqual(r(None, "", "pt_BR"), "pt")        # then the system locale
        self.assertEqual(r(None, "", "de_DE"), "en")
        self.assertEqual(r("xx", "zz", ""), "en")           # junk ignored

    def test_relaunch_args_drop_lang(self):
        f = self.gui.relaunch_args
        self.assertEqual(
            f(["/usr/bin/python", "-m", "foc_debug", "--lang", "en", "-p", "COM3"]),
            ["-m", "foc_debug", "-p", "COM3"])
        self.assertEqual(f(["py", "-m", "foc_debug", "--lang=pt"]), ["-m", "foc_debug"])
        self.assertEqual(f(["py", "-m", "foc_debug"]), ["-m", "foc_debug"])


if __name__ == "__main__":
    unittest.main()
