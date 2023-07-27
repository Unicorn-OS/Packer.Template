source arch.sh
source dir.sh

old=ubuntu-22.04
distro=ubuntu-23.04
box=$dir/builds/$distro-$arch.libvirt.box
cache=~/.vagrant.d/boxes/$distro

build(){
	if [ -f "$box" ]; then
		echo "already built"
	else
		echo "Building $box"
		packer build -only=qemu.vm -var-file=os_pkrvars/ubuntu/${distro}-${arch}.pkrvars.hcl ./packer_templates
	fi
}

add(){
	if [ -d "$cache" ]; then
		vagrant box list
	else
		vagrant box add $distro $box
		echo "Added box"
	fi
}

build
add
