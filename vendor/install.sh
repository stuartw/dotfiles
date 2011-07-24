#!/bin/sh

# install oh-my-zsh
#cp -fr oh-my-zsh $HOME/.oh-my-zsh
rsync -qr --delete --exclude=git oh-my-zsh/ $HOME/.oh-my-zsh
