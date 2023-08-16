# Doc:
- https://developer.hashicorp.com/packer/guides/automatic-operating-system-installs/preseed_ubuntu
- https://wiki.debian.org/DebianInstaller/Preseed
  - https://www.debian.org/releases/stable/amd64/apbs03.en.html
  - https://wiki.debian.org/debconf

example:
- https://www.debian.org/releases/stable/example-preseed.txt


## Obtaining the answers given during an interactive installer run
>The DebianInstaller logs the answers given during an interactive installation which can then >be used to preseed a noninteractive installation. Those logs can be accessed by giving the --installer option to debconf-get-selections. More information can be found in chapter B.3 of the installation guide.
>-https://wiki.debian.org/DebianInstaller/Preseed#Obtaining_the_answers_given_during_an_interactive_installer_run
