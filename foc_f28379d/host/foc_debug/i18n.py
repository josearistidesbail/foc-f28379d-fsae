"""i18n.py - English / Portuguese text for the host GUI.

The GUI is written in English; every user-visible string goes through ``tr()``,
which looks the English text up in ``i18n_pt.PT`` when Portuguese is active and
falls back to the English text otherwise. Keying by the English source keeps
the code readable and makes a missing translation degrade to English instead
of to a blank.

    from .i18n import tr
    QPushButton(tr("Connect"))
    self._report(tr("write failed: {msg}", msg=msg))   # templates, not f-strings

Rules (``test_i18n.py`` enforces them):
  * ``tr()`` takes a string LITERAL, never an f-string or a concatenation, so a
    static scan can find every key. Interpolate with ``{name}`` placeholders and
    keyword arguments; format specs work (``{v:.2f}``).
  * A string defined in one module and shown by another is marked with ``N_()``
    where it is written (identity, only marks it for the scan) and translated
    with ``tr(value)`` where it is displayed.
  * Firmware identifiers stay English in both languages: state names, fault /
    warning / pos_status bit names, param names, scope channel names, enum
    values. Only prose is translated.

The language is chosen once at start-up (``gui.main``) before any window is
built; changing it in the GUI restarts the window.

Pure stdlib (no Qt), so it is unit-testable.
"""

from __future__ import annotations

import logging

log = logging.getLogger(__name__)

LANGUAGES = {"en": "English", "pt": "Português (Brasil)"}
DEFAULT_LANGUAGE = "en"

_lang = DEFAULT_LANGUAGE


def set_language(code) -> str:
    """Select the active language; an unknown code falls back to English."""
    global _lang
    code = (code or "").strip().lower()
    if code not in LANGUAGES:
        if code:
            log.warning("unknown language %r, using %s", code, DEFAULT_LANGUAGE)
        code = DEFAULT_LANGUAGE
    _lang = code
    return _lang


def language() -> str:
    return _lang


def tr(text: str, /, **kw) -> str:
    """Translate ``text`` (the English source) into the active language.

    With keyword arguments the result is ``str.format``-ed, so the template
    carries ``{name}`` placeholders. Without them the text is returned as-is
    (literal braces need no escaping then).
    """
    s = text
    if _lang == "pt":
        from .i18n_pt import PT
        s = PT.get(text, text)
    return s.format(**kw) if kw else s


def N_(text: str) -> str:
    """Mark a string for translation without translating it (see module doc)."""
    return text
