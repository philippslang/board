#!/usr/bin/env python
import os
import sys


def main(args=None):
    os.environ.setdefault("DJANGO_SETTINGS_MODULE", "paddleboard.server.settings")

    from django.core.management import execute_from_command_line

    execute_from_command_line(sys.argv)


if __name__ == "__main__":
    main()