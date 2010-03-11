# For licence see README

export INSTALL = install -b

DIRS = home

.PHONY: install clean

install:
	@for i in ${DIRS}; do \
	${MAKE} -C $$i install; done

clean:
	@for i in ${DIRS}; do \
        ${MAKE} -C $$i clean; done
