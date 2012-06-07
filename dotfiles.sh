#!/bin/bash 
CMD="./helper --source . --dest $HOME --add-ignore=dotfiles.sh --add-ignore=helper --add-ignore=perl-File-LinkDir.spec"

case "$1" in
  -m|--make-links)
    $CMD
    ;;
  -l|--list)
    find ~ -maxdepth 1 -type l | sort | xargs file
    ;;
  *)
    $CMD --dry-run
    echo
    echo "Run with -m or --make-links to actually make the links"
    echo "Run with -l or --list to show symlinks in $HOME"
    ;;
esac
