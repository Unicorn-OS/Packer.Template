packer {
  required_plugins {
    docker = {
      version = ">= 0.0.7"
      source = "github.com/hashicorp/docker"
    }
    ansible = {
      version = ">= 1.1.0"
      source  = "github.com/hashicorp/ansible"
    }
  }
}

source "docker" "ubuntu" {
  image  = "ubuntu:focal"
  commit = true
}

build {
  name    = "learn-packer"
  sources = [
    "source.docker.ubuntu"
  ]

  provisioner "shell" {
    inline = [
      "apt-get update",
      "apt-get install dialog apt-utils -y",
      "apt-get install python3 sudo -y",
      "ln -sf /usr/bin/python3 /usr/bin/python",
    ]
  }

  provisioner "ansible" {
    playbook_file = "./playbook.yml"

    extra_arguments = [ "--scp-extra-args", "'-O'" ]
  }
}