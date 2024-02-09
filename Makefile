NODE=node
NODEMON=nodemon
TSC=tsc
PRETTIER=prettier
DOCKER=docker
NODE_GYP=node-gyp

DOCKERTAG=mumk5515/nodejs-template:0.1.0.RELEASE
BUILDDIR := dist
TESTFILES := $(addprefix $(BUILDDIR)/,test.test.js)

CDIR := build

repl:
	$(NODE)

run:
	$(NODEMON)

build: cbuild tsbuild

cbuild:
	$(NODE_GYP) build

tsbuild:
	$(TSC) -p .

format:
	$(PRETTIER) . --write

check:
	$(PRETTIER) . --check

clean:
	rm -rf $(BUILDDIR)

dockerize:
	$(DOCKER) build -t $(DOCKERTAG) .

publish:
	$(DOCKER) push $(DOCKERTAG)

test:
	$(NODE) --test

.PHONY: repl run build format check clean dockerize publish test

ifndef VERBOSE
	.SILENT:
endif