distro=ubuntu-23.04
arch=x86_64
packer build -only=qemu.vm -var-file=os_pkrvars/ubuntu/ubuntu-23.04-x86_64.pkrvars.hcl ./packer_templates
