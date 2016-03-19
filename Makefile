# vim: ts=4 sw=4 st=4 sta tw=80 list
#
# clang can be substituted with gcc (command line args compatible)
CC=gcc
LD=gcc
CFLAGS=-Wall -Wextra -Werror -g -O0 -std=c99
ILOOPS=5000

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
	./c_int $(ILOOPS)
	./c_float $(ILOOPS)
	./c_double $(ILOOPS)

runjs:
	node js.js $(ILOOPS)
	js24 js.js $(ILOOPS)

runluajit:
	luajit l_local_01.lua $(ILOOPS)
	luajit l_local_02.lua $(ILOOPS)
	luajit l_global.lua $(ILOOPS)

runlua:
	lua l_local_01.lua $(ILOOPS)
	lua l_local_02.lua $(ILOOPS)
	lua l_global.lua $(ILOOPS)

runphp:
	hhvm php.php $(ILOOPS)
	php php.php $(ILOOPS)
	hhvm php01.php $(ILOOPS)
	php php01.php $(ILOOPS)

runpython:
	pypy python.py $(ILOOPS)
	pypy3 python.py $(ILOOPS)
	python2 python.py $(ILOOPS)
	python3 python.py $(ILOOPS)

runruby:
	ruby rb.rb $(ILOOPS)

runall: runc runjs runluajit runlua runruby runphp runpython

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
	pypy -V
	pypy3 -V
	ruby -v
