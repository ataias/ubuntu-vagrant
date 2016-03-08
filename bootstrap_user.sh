# rm -rf /home/vagrant/.oh-my-zsh #temporary
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" || true
cp -f /vagrant/zshrc /home/vagrant/.zshrc
cp -f /vagrant/juliarc.jl /home/vagrant/.juliarc.jl

julia /vagrant/bootstrap_julia.jl

#Download ferrofluidos repository
export DIRECTORY=/vagrant/ferrofluidos
if [ -d $DIRECTORY ]; then
  cd $DIRECTORY
  git pull
  cd -
else
  cd /vagrant/
  git clone https://github.com/ataias/ferrofluidos.git
  cd -
fi

#Symbolic link to folder of project
if [ ! -d /home/vagrant/ferrofluidos ]; then
  ln -s /vagrant/ferrofluidos /home/vagrant/ferrofluidos
fi
