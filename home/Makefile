# For licence see README

export INSTALL = install -b

DIRS = git ssh
FILES = .bash_profile .pythonrc .screenrc

.PHONY: clean install $(DIRS) $(FILES)

install: $(FILES) $(DIRS)

clean:
	@for i in $(DIRS); do \
	${MAKE} -C $$i clean; done

$(FILES):
	${INSTALL} $@ ${HOME}	

$(DIRS):
	make -C $@
