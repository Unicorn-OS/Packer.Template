# Install packer then:
# https://github.com/chef/bento#using-packer

clone(){
    git clone https://github.com/chef/bento.git
    cd bent/
}

install_builders(){
    packer init -upgrade ./packer_templates
}

test(){
    # worked on: 4/21/2023 chef/bento commit b8eca156fc9c29a42baceb7f3c830bfb9a34a769

    # Debian
    ## VirtualBox
    packer build -only=virtualbox-iso.vm -var-file=os_pkrvars/debian/debian-11-x86_64.pkrvars.hcl ./packer_templates

    ## Qemu
    packer build --only=qemu.vm -var-file=os_pkrvars/debian/debian-11-x86_64.pkrvars.hcl ./packer_templates
}