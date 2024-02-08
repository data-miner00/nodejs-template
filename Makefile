NODE=node
NODEMON=nodemon
TSC=tsc
PRETTIER=prettier
DOCKER=docker

DOCKERTAG=mumk5515/nodejs-template:0.0.0.RELEASE
BUILDDIR := dist
TESTFILES := $(addprefix $(BUILDDIR)/,test.test.js)

repl:
	$(NODE)

run:
	$(NODEMON)

build:
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