#!/usr/bin/env python3

import sys
import os


def main(filename):
    code = open(filename, "r").read()

    ret = ""
    for line in code.splitlines():
        line = line.replace('\'', '\\\'')
        line = line.replace('\"', '\\\"')
        line = line.replace('\t', '\\\t')
        line = line.replace('\r', '')
        ret += (line + "\\n")

    print(ret)


if __name__ == '__main__': 
    main(sys.argv[1])
