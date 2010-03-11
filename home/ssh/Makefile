# For licence see README

export INSTALL = install -b

FILES = config
DESTDIR=${HOME}/.ssh

.PHONY: install $(FILES)

install: $(FILES)

$(FILES):
	${INSTALL} $@ ${DESTDIR}
