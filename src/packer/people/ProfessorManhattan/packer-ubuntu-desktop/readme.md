# Almost Works!
- Needs cloud-init (http/user-data) to install ssh server! I had to login and install it by hand


# Fixes:
- copied: http/user-data from: bento. This is the "cloud-init" that sets up openssh-server!
- copied all scripts/ from bento, in both scripts/_common and scripts/ubuntu. Renamed them to "{script}.symlink.sh" to match original layout.
- Removed `fonts-ubuntu-font-family-console` from scripts/cleanup.custom.sh & cleanup.symlink.sh. Ubuntu-Desktop.iso does NOT have this package!
