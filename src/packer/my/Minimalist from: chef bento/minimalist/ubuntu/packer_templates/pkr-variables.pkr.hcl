# General variables
variable "os_name" {
  type        = string
  description = "OS Brand Name"
}
variable "os_version" {
  type        = string
  description = "OS version number"
}
variable "os_arch" {
  type = string
  validation {
    condition     = var.os_arch == "x86_64" || var.os_arch == "aarch64"
    error_message = "The OS architecture type should be either x86_64 or aarch64."
  }
  description = "OS architecture type, x86_64 or aarch64"
}
variable "http_proxy" {
  type        = string
  default     = env("http_proxy")
  description = "Http proxy url to connect to the internet"
}
variable "https_proxy" {
  type        = string
  default     = env("https_proxy")
  description = "Https proxy url to connect to the internet"
}
variable "no_proxy" {
  type        = string
  default     = env("no_proxy")
  description = "No Proxy"
}
variable "sources_enabled" {
  type = list(string)
  default = [
    "source.qemu.vm",
  ]
  description = "Build Sources to use for building vagrant boxes"
}

# Source block provider specific variables
# qemu
variable "qemu_accelerator" {
  type    = string
  default = null
}
variable "qemu_binary" {
  type    = string
  default = null
}
variable "qemu_display" {
  type    = string
  default = "none"
}
variable "qemu_machine_type" {
  type    = string
  default = null
}
variable "qemuargs" {
  type    = list(list(string))
  default = null
}

# Source block common variables
variable "boot_command" {
  type        = list(string)
  default     = null
  description = "Commands to pass to gui session to initiate automated install"
}
variable "boot_wait" {
  type    = string
  default = null
}
variable "cd_files" {
  type    = list(string)
  default = null
}
variable "cpus" {
  type    = number
  default = 2
}
variable "communicator" {
  type    = string
  default = null
}
variable "disk_size" {
  type    = number
  default = 65536
}
variable "headless" {
  type        = bool
  default     = false
  #true
  description = "Start GUI window to interact with VM"
}
variable "http_directory" {
  type    = string
  default = null
}
variable "iso_checksum" {
  type        = string
  default     = null
  description = "ISO download checksum"
}
variable "iso_url" {
  type        = string
  default     = null
  description = "ISO download url"
}
variable "memory" {
  type    = number
  default = null
}
variable "output_directory" {
  type    = string
  default = null
}
variable "shutdown_command" {
  type    = string
  default = null
}
variable "shutdown_timeout" {
  type    = string
  default = "15m"
}
variable "ssh_password" {
  type    = string
  default = "vagrant"
}
variable "ssh_port" {
  type    = number
  default = 22
}
variable "ssh_timeout" {
  type    = string
  default = "60m"
}
variable "ssh_username" {
  type    = string
  default = "vagrant"
}
variable "vm_name" {
  type    = string
  default = null
}
