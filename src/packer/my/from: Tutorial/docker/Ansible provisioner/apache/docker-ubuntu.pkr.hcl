// from: https://developer.hashicorp.com/packer/tutorials/docker-get-started

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

variable "docker_image" {
  type    = string
  default = "ubuntu:lunar"
}

// Parallel build: https://developer.hashicorp.com/packer/tutorials/docker-get-started/docker-get-started-parallel-builds
source "docker" "ubuntu" {
  image  = var.docker_image
  commit = true
}

source "docker" "ubuntu-bionic" {
  image  = "ubuntu:bionic"
  commit = true
}

build {
  name    = "learn-packer"
  sources = [
    "source.docker.ubuntu",
    "source.docker.ubuntu-bionic",
  ]

  provisioner "shell" {
    inline = [
      "apt-get update",
      "apt-get install dialog apt-utils -y",
      "apt-get install python3 sudo -y",
      "ln -sf /usr/bin/python3 /usr/bin/python",
    ]
    only = ["docker.ubuntu"]
  }

  provisioner "ansible" {
    playbook_file = "./playbook.yml"
    extra_arguments = [ "--scp-extra-args", "'-O'" ]
    only = ["docker.ubuntu"]
  }

  post-processor "docker-tag" {
    repository = "learn-packer"
    tags       = ["ubuntu-xenial", "packer-rocks"]
    only       = ["docker.ubuntu"]
  }

  post-processor "docker-tag" {
    repository = "learn-packer"
    tags       = ["ubuntu-bionic", "packer-rocks"]
    only       = ["docker.ubuntu-bionic"]
  }
}