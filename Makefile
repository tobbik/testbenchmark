# vim: ts=4 sw=4 st=4 sta tw=80 list
#
# clang can be substituted with gcc (command line args compatible)
CC=gcc
LD=gcc
CFLAGS=-Wall -Wextra -Werror -g -O0 -std=c99

EXE=c_double c_float c_int

default:
	$(MAKE) all

compile:
	$(MAKE) \
	"CC=$(CC)" \
	"LD=$(LD)" \
	all

clang:
	$(MAKE) \
	"CC=/usr/bin/clang" \
	"LD=/usr/bin/clang" \
	all

all: $(EXE)

%: %.c
	$(CC) $(INCS) $(CFLAGS) -c $< -o $@.o
	$(CC) $@.o -o $@
	rm $@.o

%: %.o
	$(CC) $< -o $@

%.o: %.c
	$(CC) $(INCS) $(CFLAGS) -c $< -o $@

clean:
	-rm  $(EXE)

runc: $(EXE)
	./c_int
	./c_float
	./c_double

runjs:
	node js.js
	js24 js.js

runluajit:
	luajit l_local_01.lua
	luajit l_local_02.lua
	luajit l_global.lua

runlua:
	lua l_local_01.lua
	lua l_local_02.lua
	lua l_global.lua

runpython:
	python2 python.py
	python3 python.py

runphp:
	php php.php
	hhvm php.php

runall: runc runjs runluajit runlua runphp runpython

versions:
	gcc -dumpversion
	node -v
	js24 -h | grep Version
	luajit -v
	lua -v
	php -v | grep built
	hhvm --version | grep HipHop
	python2 -V
	python3 -V
