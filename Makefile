#!/usr/bin/make

# Author: Shuhei Hayakawa

#______________________________________________________________________________
# target ______________________________________________________________________
.PHONY:
all:
	@ for d in `ls -d *`; do \
	    if [ -f $$d/Makefile ]; then \
	      make -C $$d; fi; done

clean:
	@ for d in `ls -d *`; do \
	    if [ -f $$d/Makefile ]; then \
	      make -C $$d clean; fi; done
