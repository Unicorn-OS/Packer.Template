doc: https://developer.hashicorp.com/packer/plugins/provisioners/ansible/ansible

# Fix:
- https://github.com/hashicorp/packer-plugin-ansible/issues/110

works:
```
provisioner "ansible" {
  playbook_file = "./playbook.yml"
  extra_arguments = [ "--scp-extra-args", "'-O'" ]
}
```
