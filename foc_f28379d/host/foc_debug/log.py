"""log.py - console logging for the FOC debug tools.

All modules log under the "foc_debug" logger (via logging.getLogger(__name__),
which makes them children of it). Call setup_logging() once at startup to attach
a stderr handler so errors and important events are printed to the console where
they can be copied for debugging.

Verbosity:
    setup_logging(verbose=True)         # DEBUG (per-transaction detail)
    setup_logging()                     # INFO
    FOC_DEBUG_LOG=debug python -m ...   # env override: debug/info/warning/error
"""

from __future__ import annotations

import logging
import os

_ROOT = "foc_debug"
_configured = False


def setup_logging(verbose: bool | None = None) -> None:
    """Attach a stderr handler to the 'foc_debug' logger. Safe to call twice."""
    global _configured

    env = os.environ.get("FOC_DEBUG_LOG", "").strip().lower()
    if env in ("debug", "info", "warning", "error"):
        level = getattr(logging, env.upper())
    else:
        if verbose is None:
            verbose = env in ("1", "true", "yes", "verbose")
        level = logging.DEBUG if verbose else logging.INFO

    logger = logging.getLogger(_ROOT)
    logger.setLevel(level)
    if not _configured:
        handler = logging.StreamHandler()  # stderr
        handler.setFormatter(
            logging.Formatter(
                "%(asctime)s %(levelname)-7s %(name)s: %(message)s",
                datefmt="%H:%M:%S",
            )
        )
        logger.addHandler(handler)
        logger.propagate = False
        _configured = True
