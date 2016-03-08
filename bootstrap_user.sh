# rm -rf /home/vagrant/.oh-my-zsh #temporary
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" || true
cp -f /vagrant/zshrc /home/vagrant/.zshrc
cp -f /vagrant/juliarc.jl /home/vagrant/.juliarc.jl

julia /vagrant/bootstrap_julia.jl

#Download ferrofluidos repository
export DIRECTORY=/home/vagrant/ferrofluidos
if [ -d $DIRECTORY ]; then
  cd $DIRECTORY
  git pull
  cd -
else
  git clone https://github.com/ataias/ferrofluidos.git
fi
