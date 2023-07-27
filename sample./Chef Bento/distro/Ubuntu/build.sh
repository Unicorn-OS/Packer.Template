source fn/add.sh
source fn/arch.sh
source fn/dir.sh

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

build
add
