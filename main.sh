#!/bin/bash
# Main script for the project

xzpaque()
{
    local install="source $HOME/.paque/xzpaque/modules/install.sh"
    local load="source $HOME/.paque/xzpaque/modules/load.sh"
    local cmd="$1"; shift
    # set args to command args past the first
    local args="$@"
    case "$cmd" in
        Pi)
            $install $args
        ;;
        Pl)
            $load
        ;;
        Pr)
            rm -rf $HOME/.paque/packages/$args
        ;;
        *)
            echo "Unknown command: $cmd"
            return 1
        ;;
    esac
}
