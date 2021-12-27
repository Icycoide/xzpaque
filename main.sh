#!/bin/bash
# Main script for the project

xzpaque()
{
    local install="source modules/install.sh"
    local cmd="$1"; shift
    # set args to command args past the first
    local args="$@"
    
    case "$cmd" in
        install)
            $install $args
        ;;
        *)
            echo "Unknown command: $cmd"
            return 1
        ;;
    esac
}