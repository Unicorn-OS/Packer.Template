locals {
  # Source block provider specific

  # qemu
  qemu_binary = var.qemu_binary == null ? "qemu-system-${var.os_arch}" : var.qemu_binary
  qemu_machine_type = var.qemu_machine_type == null ? (
    var.os_arch == "aarch64" ? "virt" : "q35"
  ) : var.qemu_machine_type
  qemuargs = var.qemuargs == null ? (
        var.os_arch == "aarch64" ? [
          ["-boot", "strict=off"]
        ] : null
      ) : var.qemuargs

  # Source block common
  boot_wait = var.boot_wait == null ? "10s" : var.boot_wait
  cd_files = var.cd_files == null ? var.cd_files : null
  communicator = var.communicator == null ? "ssh" : var.communicator
  http_directory   = var.http_directory == null ? "${path.root}/http" : var.http_directory
  memory           = var.memory == null ? 2048 : var.memory
  output_directory = var.output_directory == null ? "${path.root}/../builds/packer-${var.os_name}-${var.os_version}-${var.os_arch}" : var.output_directory
  shutdown_command = var.shutdown_command == null ? "echo 'vagrant' | sudo -S /sbin/halt -h -p" : var.shutdown_command
  vm_name = var.vm_name == null ? (
    var.os_arch == "x86_64" ? "${var.os_name}-${var.os_version}-amd64" : "${var.os_name}-${var.os_version}-${var.os_arch}"
  ) : var.vm_name
}

# https://www.packer.io/docs/templates/hcl_templates/blocks/source
source "qemu" "vm" {
  # QEMU specific options
  accelerator  = var.qemu_accelerator
  display      = var.headless ? "none" : var.qemu_display
  machine_type = local.qemu_machine_type
  qemu_binary  = local.qemu_binary
  qemuargs     = local.qemuargs
  # Source block common options
  boot_command     = var.boot_command
  boot_wait        = local.boot_wait
  cd_files         = local.cd_files
  cpus             = var.cpus
  communicator     = local.communicator
  disk_size        = var.disk_size
  headless         = var.headless
  http_directory   = local.http_directory
  iso_checksum     = var.iso_checksum
  iso_url          = var.iso_url
  memory           = local.memory
  output_directory = "${local.output_directory}-qemu"
  shutdown_command = local.shutdown_command
  shutdown_timeout = var.shutdown_timeout
  ssh_password     = var.ssh_password
  ssh_port         = var.ssh_port
  ssh_timeout      = var.ssh_timeout
  ssh_username     = var.ssh_username
  vm_name          = local.vm_name
}