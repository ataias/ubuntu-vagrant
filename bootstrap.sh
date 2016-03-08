add-apt-repository ppa:staticfloat/juliareleases
apt-get update
apt-get install -y build-essential checkinstall
apt-get install -y hdf5-tools
apt-get install -y julia
apt-get install -y git
apt-get install -y g++
apt-get install -y zsh
chsh -s `which zsh` vagrant
