ENV?=development

## run through roswell
LISP?=sbcl --sysinit ./.sbclrc

LISPFLAGS=--non-interactive

.PHONY: run
run:
	ENV=$(ENV) \
	$(LISP) \
	$(LISPFLAGS) --quit --eval "(print \"ok\")"
