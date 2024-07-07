# Nix Compatibility
pname ?= app
out ?= /usr/local

# GNU Make
prefix ?= ${out}
bindir ?= ${prefix}/bin
libdir ?= ${prefix}/lib
includedir ?= ${prefix}/include

CXXFLAGS ?= -g

.PHONY: all build clean install uninstall

all: install

build:
	@${CXX} -o ${pname} ${CXXFLAGS} src/main.cc

clean:
	@rm -f ${pname}

install: build
	@mkdir -p ${bindir}

	@install -Dm755 ${pname} ${bindir}

uninstall: clean
	@rm -f ${bindir}/${pname}
