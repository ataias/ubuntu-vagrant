rm -rf /home/vagrant/.zshrc
cp /vagrant/.zshrc /home/vagrant/
julia /vagrant/bootstrap_julia.jl
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
