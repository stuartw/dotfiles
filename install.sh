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
		popd
	else
		cp -fr ${SOURCE} ${DEST}
		#${INSTALL} ${SOURCE}/ ${DEST}
        #see if this stops directories being created in existing directories
        #rsync -qr --delete --exclude=git oh-my-zsh/ $HOME/.oh-my-zsh
	fi
done


# anything else we need to do?

# how to run this here?
#vim -sc ":call pathogen#helptags()"
