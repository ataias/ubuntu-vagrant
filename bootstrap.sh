#New repositories
add-apt-repository ppa:staticfloat/juliareleases

#Update and install
apt-get update
apt-get install -y build-essential checkinstall
apt-get install -y hdf5-tools
apt-get install -y julia
apt-get install -y git
apt-get install -y g++
apt-get install -y zsh

#Install Python
apt-get install -y python3 python3-pip
apt-get install -y python3-matplotlib python3-numpy
pip3 install dropbox

#Change default shell of user vagrant
chsh -s `which zsh` vagrant
