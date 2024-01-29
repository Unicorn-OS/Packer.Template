# Favorite.Sources:
# [Chef Bento](https://github.com/chef/bento)
- [Home:](http://chef.github.io/bento/)
- [source:](https://github.com/chef/bento)

Uses [Chef Solo](https://docs.chef.io/chef_solo/) [Provisioner](https://developer.hashicorp.com/packer/plugins/provisioners/chef/chef-solo).

## [Related projects](https://github.com/chef/bento#related-projects)
Keep this! has other working builds.

# Boxcutter
https://github.com/boxcutter
- https://github.com/boxcutter/windows

# geerlingguy
works:
- https://github.com/geerlingguy/packer-boxes
- https://github.com/geerlingguy/packer-drupal-vm
Fixes:, keep!: https://github.com/geerlingguy/packer-boxes/issues/96

# Debugging
`PACKER_LOG=1 packer build -only=qemu windows-10.json > build.log`
