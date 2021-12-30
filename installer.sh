# quick install file
echo "Installing Paqué..."
mkdir -p "$HOME/.paque"
# download paqué from the latest release on github.com/Lintine/xzpaque
curl -sL "https://github.com/Lintine/xzpaque/releases/latest/download/xzpaque.tar.gz" | tar -x -z -C "$HOME/.paque"
# add xzpaque to bashrc
echo "Adding xzpaque to bashrc..."
echo "source $HOME/.paque/xzpaque.sh\nxzpaque load" >> "$HOME/.bashrc"
# source bashrc
echo "Sourcing bashrc..."
source "$HOME/.bashrc"
# done
echo "Done!"