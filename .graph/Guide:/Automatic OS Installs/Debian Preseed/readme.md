# Doc:
packer:
- https://developer.hashicorp.com/packer/guides/automatic-operating-system-installs/preseed_ubuntu

Home: https://wiki.debian.org/DebianInstaller/Preseed
- https://www.debian.org/releases/stable/amd64/apbs03.en.html
- https://wiki.debian.org/debconf

## Obtaining the answers given during an interactive installer run
>The DebianInstaller logs the answers given during an interactive installation which can then >be used to preseed a noninteractive installation. Those logs can be accessed by giving the --installer option to debconf-get-selections. More information can be found in chapter B.3 of the installation guide.
>-https://wiki.debian.org/DebianInstaller/Preseed#Obtaining_the_answers_given_during_an_interactive_installer_run


## Validate()
>You can check that the preseed file syntax is valid with debconf-set-selections -c preseed.cfg

## Udeb file
- https://wiki.debian.org/DebianInstaller/Preseed#Preseeding_and_the_installer.27s_debconf_templates

# example:
- https://www.debian.org/releases/stable/example-preseed.txt
- https://wiki.debian.org/DebianInstaller/Preseed#Exhaustive_preseed_files
- https://wiki.debian.org/DebianInstaller/Preseed#Examples
