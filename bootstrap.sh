#Change default repos

#Comment the next three lines if you are not in Brazil
cp /etc/apt/sources.list /etc/apt/sources.list~
sed -i 's/http:\/\/archive.ubuntu.com/http:\/\/ubuntu.c3sl.ufpr.br/g' /etc/apt/sources.list
sed -i 's/http:\/\/security.ubuntu.com/http:\/\/ubuntu.c3sl.ufpr.br/g' /etc/apt/sources.list

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
apt-get install -y htop

#Install Python
apt-get install -y python3 python3-pip
apt-get install -y python3-matplotlib python3-numpy
apt-get install -y python3-h5py
pip3 install dropbox

#Latex
#Do not install documentation by setting to not install recommends
#Documentation takes around 400 Mb of 600Mb in the latex distribution,
#So it is much faster to just skip them (I never read these actually...)
apt-get --no-install-recommends install -y texlive-latex-base
apt-get --no-install-recommends install -y texlive-latex-extra
apt-get --no-install-recommends install -y texlive-fonts-recommended
apt-get --no-install-recommends install -y dvipng

#Change default shell of user vagrant
chsh -s `which zsh` vagrant
