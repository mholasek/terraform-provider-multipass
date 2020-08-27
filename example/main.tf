resource "multipass_vm" "vm01" {
  name = "vm01"
  cpus = "1"
  memory_size = "1G"
  disk_size = "10G"
  image = "18.01"
  }