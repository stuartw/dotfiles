# For licence see README

export INSTALL = install -b

install: ${HOME}/.gitignore ${HOME}/.gitconfig

${HOME}/.gitignore: ${CURDIR}/.gitignore
	${INSTALL} -b ${CURDIR}/.gitignore ${HOME}	

${HOME}/.gitconfig: ${CURDIR}/gitconfig.sh
	sh ${CURDIR}/gitconfig.sh

clean:
	if [ -e ${HOME}/.gitignore.old ]; then \
	mv -f ${HOME}/.gitignore.old ${HOME}/.gitignore; \
	else rm -f ${HOME}/.gitignore; \
	fi
