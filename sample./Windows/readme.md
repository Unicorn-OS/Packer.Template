[Home:](http://chef.github.io/bento/)

# Chef Bento - Windows box
[bento/packer_templates/windows/](https://github.com/chef/bento/tree/main/packer_templates/windows)


# Secure Boot & TPM
## Note: Chef Bento is insecure! It Bypasses TPM & Secure Boot!
``` BypassTPMCheck
BypassSecureBootCheck
```

## Fix:
**This can be fixed with qemu virtual tpm device.** [packer docs](https://developer.hashicorp.com/packer/plugins/builders/qemu#vtpm)

# other
sch:
https://github.com/search?q=packer+windows

# Issues:
https://github.com/chef/bento/issues?q=Windows+qemu
