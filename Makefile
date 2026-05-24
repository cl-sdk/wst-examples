]ENV?=development

## run through roswell
LISP?=sbcl --sysinit $(PWD)/.sbclrc

LISPFLAGS=--non-interactive --quit

PROGRAM?=

_build:
	$(LISP) \
	$(LISPFLAGS) \
	--eval '(load "./.sbclrc")' \
	--eval '(asdf:operate (quote asdf:program-op) :wst.example.url-shortener.app)' \
	--eval '(uiop:quit)'

.PHONY: url-shortener
url-shortener:
	PROGRAM=$@ \
	make _build

