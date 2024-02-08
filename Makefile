NODE=node
NODEMON=nodemon
TSC=tsc
PRETTIER=prettier
DOCKER=docker

DOCKERTAG=mumk5515/nodejs-template:0.0.0.RELEASE

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
	rm -rf dist

dockerize:
	$(DOCKER) build -t $(DOCKERTAG) .

publish:
	$(DOCKER) push $(DOCKERTAG)

.PHONY: repl check clean

ifndef VERBOSE
	.SILENT:
endif