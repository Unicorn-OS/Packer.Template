# How Packer renames ISO Files?
Packer uses [hashicorp/go-getter](https://github.com/hashicorp/go-getter) to fetch isos, hashes the download url and renames the file in packer_cache.

_Discussion:_
- [ISOs downloaded to packer_cache are hard to identify #1826](https://github.com/hashicorp/packer/issues/1826)

ToDo: **I Can make a function that uses a "manifest" file to regenerate these as Hardlinks to ~/.uni/packer/iso**


more: https://www.google.com/search?q=packer_cache+iso+name
