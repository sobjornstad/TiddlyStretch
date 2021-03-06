.PHONY: all docs clean

all: docs

docs: output/index.html

output/index.html: tiddlywiki.info tiddlers/* plugins/TiddlyStretch/*
	tiddlywiki --build

clean:
	rm -rf output
