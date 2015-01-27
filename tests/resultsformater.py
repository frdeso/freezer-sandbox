import sys
lines = sys.stdin.readlines()
nbrun = 0
for i in xrange(0, len(lines), 5):
        mylist= lines[i+1:i+4]
        mylist = map(str.strip, mylist)
        data = ",".join(mylist)
        print data.strip()

