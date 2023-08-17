clone(){
git clone --recurse-submodules https://github.com/ruzickap/packer-templates.git
cd packer-templates || exit
}

disable_headless(){
sed -i 's/headless=true/headless=false/' build.sh
}

pre(){
clone
disable_headless
}

works(){
# Ubuntu Server
./build.sh ubuntu-20.04-server-amd64-libvirt

# Windows 10 Desktop
}

main(){
pre
works
}
