# Nix Compatibility
pname ?= app
out ?= /usr/local

# GNU Make
prefix ?= ${out}
bindir ?= ${prefix}/bin
libdir ?= ${prefix}/lib
includedir ?= ${prefix}/include

CFLAGS ?= -g

.PHONY: all clean install uninstall

all:
	@${CC} -o ${pname} ${CFLAGS} src/main.c

clean:
	@rm -f ${pname}

install: all
	@mkdir -p ${bindir}

	@install -Dm755 ${pname} ${bindir}

uninstall: clean
	@rm -f ${bindir}/${pname}
