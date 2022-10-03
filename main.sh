#!/bin/bash
# Main script for the project

xzpaque()
{
    # local install="source $HOME/.paque/pkgs/"
    echo "╭─Action"
    read -p "╰"cmd
    case "$cmd" in
        I)
            echo "Which package would you like to install?"
            echo "╭─Package"
            read -p "╰" ipkg
            install() {
            package_hub="https://github.com/Lintine/paque-packages/raw/main"
            package_dir="$HOME/.paque/packages"
            package_url="$ipkg_hub/$ipkg.tar.gz"
            if [ ! -d "$ipkg_dir/$ipkg" ] && [ -n "$ipkg_url" ]; then
                echo "Downloading $ipkg to $ipkg_dir"
                mkdir -p "$ipkg_dir/$ipkg"
                curl -sL "$ipkg_url" | tar -x -z -C "$ipkg_dir/$ipkg"
            else
                echo "Package $ipkg already exists or package url is invalid"
                return 1
            fi
            package_deps="$package_dir/$package/dependencies.txt"
            echo "Looking for dependencies..."
            if [ -f "$package_deps" ]; then
                while read -r dep; do
                    install "$dep"
                done < "$package_deps"
            fi
            }
            install
        ;;
        R)
            echo "Which package are you going to remove?"
            echo "╭─Package"
            read -p "╰"args
            rm -rf $HOME/.paque/pkgs/$args
        ;;
        "?")
            echo "
            I - Install package
            R - Remove package
            ? - Display this"
        ;;
        *)
            echo "Unknown command:" $cmd
	    echo "Type '?' to see a list of commands"
            return 1
        ;;
    esac
}
