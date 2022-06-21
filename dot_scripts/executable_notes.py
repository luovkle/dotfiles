#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os
import pathlib
import secrets
import sys

notes_dir = ".notes"
notes_path = os.path.join(pathlib.Path.home(), notes_dir)

if not os.path.isdir(notes_path):
    os.mkdir(notes_path)

while True:
    note = secrets.token_hex(5)

    if not os.path.isfile(os.path.join(notes_path, note)):
        break

sys.stdout.write(os.path.join(notes_path, note))
