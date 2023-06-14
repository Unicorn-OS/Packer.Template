# Install packer then:
# https://github.com/chef/bento#using-packer

clone(){
    git clone https://github.com/chef/bento.git
    cd bento
}

install_builders(){
    packer init -upgrade ./packer_templates
}

test_virtualbox(){
    ## worked on: chef/bento commit b8eca156fc9c29a42baceb7f3c830bfb9a34a769
    packer build --only=virtualbox-iso.vm -var-file=os_pkrvars/debian/debian-11-x86_64.pkrvars.hcl ./packer_templates
}

test_qemu(){
    packer build --only=qemu.vm -var-file=os_pkrvars/ubuntu/ubuntu-22.04-x86_64.pkrvars.hcl ./packer_templates
    packer build --only=qemu.vm -var-file=os_pkrvars/debian/debian-11-x86_64.pkrvars.hcl ./packer_templates
    packer build --only=qemu.vm -var-file=os_pkrvars/ubuntu/ubuntu-22.04-x86_64.pkrvars.hcl ./packer_templates

}

patch(){
    # Debian
    # Qemu
    ## Problem: Fails at final step: Running "grub-install"
    ## Cause: seems to be trying to install Grub on disk 'sda' where only '/dev/vda' is available.
    ## Solution: Patch 'bento/packer_templates/http/debian/preseed.cfg' by changing 'sda' to 'vda'!
    echo "patch in ansible"
}