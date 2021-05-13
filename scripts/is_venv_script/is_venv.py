import sys


def is_venv(): return hasattr(sys, 'real_prefix') or sys.base_prefix != sys.prefix


if is_venv():
    print('INSIDE virtualenv')
else:
    print('OUTSIDE virtualenv')