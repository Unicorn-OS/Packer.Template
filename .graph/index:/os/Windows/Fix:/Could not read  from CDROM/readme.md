# Problem:
sch: https://www.google.com/search?q=packer+Could+not+read+from+CDROM+code+0003, https://www.google.com/search?q=Could+not+read+from+CDROM+code+0003

# Solution:
- https://gist.github.com/chrisoldwood/aeec1e6876dadcc407109896d8d8aac7

else:
- https://github.com/microsoft/WSL/issues/1043


## cdrom_interface = scsi
doc: https://developer.hashicorp.com/packer/plugins/builders/qemu


# Try
- https://discuss.hashicorp.com/t/boot-failed-iso-could-not-be-read-from-cdrom-during-package-building-code-0005-code-0003/46314

>?Solved? by adding `disk_image = true` to `source "qemu" "main"`.
