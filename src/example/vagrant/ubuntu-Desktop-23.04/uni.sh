build(){
    packer build --only=qemu.vm -var-file=os_pkrvars/ubuntu/ubuntu-23.04-x86_64.pkrvars.hcl ./packer_templates
}

add(){
    vagrant box add ubuntu-23.04-x86_64.libvirt.box --name bento/ubuntu-23.04-x86_64
}

test(){
    vagrant up
}