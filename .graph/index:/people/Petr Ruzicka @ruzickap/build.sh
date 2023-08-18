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
./build.sh windows-10-enterprise-x64-eval-libvirt

# Windows Server 2022
./build.sh windows-server-2022-standard-x64-eval-libvirt
}

box_add(){
packer_dir=/var/tmp/packer-templates-images
cd $packer_dir

vagrant box add windows-server-2022-standard-x64-eval-libvirt.box --name windows-server-2022

vagrant box add windows-10-enterprise-x64-eval-libvirt.box --name windows-10-enterprise
}

main(){
pre
works
}
