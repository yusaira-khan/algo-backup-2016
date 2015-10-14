#/bin/python

import sys
import subprocess
row, column=tuple([int(i) for i in  subprocess.check_output(["stty", "size"]).split()])
rep = None
if len(sys.argv):
    rep= sys.argv[1]

if rep is None or len(rep) < 3:
    rep=':D <3'

for i in range(column/(len(rep)+1)):
    print '\n',
    for j in range(i):
        print rep,

