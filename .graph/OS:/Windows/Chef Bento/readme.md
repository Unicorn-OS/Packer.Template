```
to=~/.uni/hyper/packer/bento
mkdir -p $(dirname $to) ; cd $(dirname $to)

git clone https://github.com/chef/bento.git
cd bento
packer init -upgrade ./packer_templates
packer build --only=qemu.vm -var-file=os_pkrvars/windwos/windows-2022-x86_64.pkrvars.hcl ./packer_templates
```
