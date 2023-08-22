# Ubuntu Desktop
sch: https://github.com/search?q=packer+ubuntu+desktop&type=repositories

# works!
## Petr Ruzicka ruzickap/packer-templates
https://github.com/ruzickap/packer-templates

build: "./build.sh ubuntu-20.04-desktop-amd64-libvirt"
add: "vagrant box add ubuntu-20.04-desktop-amd64-libvirt.box --name ruzickap/ubuntu-20.04-desktop-amd64"

# else:
## provider: QEMU
- https://github.com/ProfessorManhattan/packer-ubuntu-desktop

## provider: Proxmox
https://github.com/lsampaioweb/packer-proxmox-ubuntu-22-04-iso
