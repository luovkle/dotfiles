#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import socket
import struct
import sys

with open("/proc/net/route", "r") as f:
    for line in f:
        field = line.split()[2]
        if len(field) == 8 and field != "00000000":
            gateway = socket.inet_ntoa(struct.pack("<L", int(field, 16)))
            sys.stdout.write(gateway)
