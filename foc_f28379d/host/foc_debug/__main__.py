"""Entry point so `python -m foc_debug ...` works."""

from .cli import main

if __name__ == "__main__":
    raise SystemExit(main())
