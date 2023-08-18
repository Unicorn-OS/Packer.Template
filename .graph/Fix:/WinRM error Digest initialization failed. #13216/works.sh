# version: Vagrant 2.3.8.dev
# https://github.com/hashicorp/vagrant/releases/
sudo apt purge vagrant

# Reinstall
cd ~/Downloads
wget https://github.com/hashicorp/vagrant/releases/download/2.3.8.dev%2B000086-5fc64cde/vagrant_2.3.8.dev-1_amd64.deb
sudo apt install -y ./vagrant_2.3.8.dev-1_amd64.deb

# Install Plugin
vagrant plugin expunge --reinstall

# Test
vagrant up --debug
