old=ubuntu-22.04
distro=ubuntu-23.04

packer build -only=qemu.vm -var-file=os_pkrvars/ubuntu/${distro}-x86_64.pkrvars.hcl ./packer_templates
