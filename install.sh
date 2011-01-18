#/bin/sh
# script to install dotfiles

# we need dotfiles
shopt -s dotglob

#INSTALL="rsync -tri"
DESTDIR=${HOME}

SOURCES="*"
IGNORE="README|install.sh|.gitmodules|.git$"

for SOURCE in ${SOURCES}; do

	if $(echo ${SOURCE} | egrep -q ${IGNORE}); then
		continue
	fi

	DEST="${DESTDIR}"

	# allow a directory to override the default copy action
	if [ -e ${SOURCE}/install.sh ]; then
		pushd ${SOURCE}
		./install.sh
		popd ${SOURCE}
	else
		cp -fr ${SOURCE} ${DEST}
		#${INSTALL} ${SOURCE}/ ${DEST}
	fi
done


# anything else we need to do?

# how to run this here?
#vim -sc ":call pathogen#helptags()"
