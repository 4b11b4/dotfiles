#!/usr/bin/env python3
import sys
chunks = lambda l: [l[i:i + 2] for i in range(0, len(l), 2)]

for l in open(sys.argv[1]).read().splitlines():
    words = chunks([i for i in range(len(l)) if l[i] in ['"']])
    print((" ").join([l[w[0]:w[1]+1] for w in words]))
