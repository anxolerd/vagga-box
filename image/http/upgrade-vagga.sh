#!/bin/sh

case "$1" in
    # If no arguments provided update to the latest stable version
    ''|--stable)
        install_script="vagga-install.sh"
        ;;
    --testing)
        install_script="vagga-install-testing.sh"
        ;;
    *)
        echo 'Specify one of "--stable", "--testing"' >&2
        exit 1
        ;;
esac

curl -sfS "http://files.zerogw.com/vagga/${install_script}" | sh
