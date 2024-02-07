NODE=node
NODEMON=nodemon
TSC=tsc
PRETTIER=prettier

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
	rm dist

.PHONY: repl check clean

ifndef VERBOSE
	.SILENT:
endif