#!/bin/sh

GLOBAL_SETTING="git config --global"


# who am i
#$GLOBAL_SETTING user.name "swakef"
#$GLOBAL_SETTING user.email "stuart.wakefield@imperial.ac.uk"
$GLOBAL_SETTING user.name "stuartw"
$GLOBAL_SETTING user.email "stuart.wakefield@gmail.com"

# core
$GLOBAL_SETTING core.excludesfile $HOME/.gitignore

# colours
$GLOBAL_SETTING color.branch auto
$GLOBAL_SETTING color.diff auto
$GLOBAL_SETTING color.interactive auto
$GLOBAL_SETTING color.status auto

# github
$GLOBAL_SETTING github.user "stuartw"
$GLOBAL_SETTING github.token "CHANGEME"

$GLOBAL_SETTING help.autocorrect 1

# aliases
$GLOBAL_SETTING alias.my-cvsimport "cvsimport -k"
$GLOBAL_SETTING alias.my-cvsexportcommit "cvsexportcommit -p -v -c"
$GLOBAL_SETTING alias.my-merge "merge --no-ff"
$GLOBAL_SETTING alias.lol "log --graph --decorate --pretty=oneline --abbrev-commit"
$GLOBAL_SETTING alias.lola "log --graph --decorate --pretty=oneline --abbrev-commit --all"
