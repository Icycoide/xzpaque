#!/bin/bash
# quick install file
echo "Installing Paqué..."
mkdir -p "$HOME/.paque"
mkdir -p "$HOME/.paque/packages"
# download paqué from the latest release on github.com/Lintine/xzpaque
curl -sL "https://github.com/Lintine/xzpaque/releases/latest/download/xzpaque.tar.gz" | tar -x -z -C "$HOME/.paque"
# add xzpaque to bashrc
echo "Adding xzpaque to bashrc..."
echo -e "source $HOME/.paque/xzpaque/main.sh\nxzpaque Pl all" >> "$HOME/.bashrc"
# source bashrc
echo "Sourcing bashrc..."
source "$HOME/.bashrc"
choice() {
	echo "Would you like to put an executable command for xzpaque in /usr/bin or /usr/local/bin?
	1. /usr/bin
	2. /usr/local/bin
	3. No(ne)./I will make an executable later."
	read i_choice
	case "$i_choice" in
		1)
			sudo cp $HOME/.paque/xzpaque/main.sh /usr/bin/xzpaque
			sudo chmod +x /usr/bin/xzpaque
		;;
		2)
			sudo cp $HOME/.paque/xzpaque/main.sh /usr/local/bin/xzpaque
			sudo chmod +x /usr/local/bin/xzpaque
		;;
		3)
			# do nothing
		;;
		*)
			echo "please enter a valid answer. [1/2/3]"
		;;
	esac 
}
# done
echo "Done!"
