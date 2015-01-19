#!/bin/sh -x
ITER=6
pwd
for i in `seq 1 $ITER`
do
	./clean-caches.sh
	./grep.sh
	./clean-caches.sh
	./tar.sh
	./clean-caches.sh
	./find.sh
	done
