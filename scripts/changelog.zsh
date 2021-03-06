#!/usr/bin/env bash

# NAME
#   changelog -- create a barebones project structure
#
# SYNOPSIS
#   git changelog --tag [tag_name]
#
# OPTIONS
#   --tag         -t    -- Prepare changelog for a release
#   --list        -l    -- Lists commits since last release
#   --no-merges         -- Skip merge commits
#
# DESCRIPTION
#   Populates a file that matches `change|history -i_` with commits since the previous tag.
#   If no tags are present, populate commits since the project began.
#   Opens the changelog in `$EDITOR` when set.
#
changelog() {
  FILE=""
  LIST=false
  TAG="n.n.n"
  GIT_LOG_OPTS=""

  while [ "$1" != "" ]; do
    case $1 in
      -l | --list )
        LIST=true
        ;;
      -t | --tag )
        TAG=$2
        shift
        ;;
      --no-merges )
        GIT_LOG_OPTS='--no-merges'
        ;;
      * )
        FILE=$1
        ;;
    esac
    shift
  done

  DATE=`date +'%Y-%m-%d'`
  HEAD="\n$TAG / $DATE\n==================\n\n"

  if $LIST; then
    version=$(git describe --tags --abbrev=0 $(git rev-list --tags --max-count=1))
    if test -z "$version"; then
      git log $GIT_LOG_OPTS --pretty="format: * %s"
    else
      git log $GIT_LOG_OPTS --pretty="format: * %s" $version..
    fi
    return
  fi

  CHANGELOG=$FILE
  if test "$CHANGELOG" = ""; then
    CHANGELOG=`ls | egrep 'change|history' -i`
    if test "$CHANGELOG" = ""; then
      CHANGELOG='History.md';
    fi
  fi

  tmp="/tmp/changelog"
  printf "$HEAD" >! $tmp
  $(changelog $GIT_LOG_OPTS --list >>! $tmp)
  printf '\n' >>! $tmp
  if [ -f $CHANGELOG ]; then cat $CHANGELOG >>! $tmp; fi
  mv $tmp $CHANGELOG
  test -n "$EDITOR" && $EDITOR $CHANGELOG
}

# EOF
