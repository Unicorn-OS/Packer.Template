old=ubuntu-22.04
distro=ubuntu-23.04

build(){
	packer build -only=qemu.vm -var-file=os_pkrvars/ubuntu/${distro}-${arch}.pkrvars.hcl ./packer_templates
}

add(){
	vagrant box add $distro $dir/builds/$distro-$arch.libvirt.box  
}

source arch.sh
source dir.sh
build
add
source import.sh
