# Terraform Multipass Provider

## Install
### Tools
* go
* GNU Make
* git

### Run
```bash
git clone https://github.com/mholasek/terraform-provider-multipass.git
cd terraform-provider-multipass
make
mkdir -p ~/.terraform.d/plugins/bitmedia.at/bitmedia/multipass/1.0.0/`go env GOOS`_`go env GOARCH`
cp bin/* ~/.terraform.d/plugins/bitmedia.at/bitmedia/multipass/1.0.0/`go env GOOS`_`go env GOARCH`
```

## Example Usage
```terraform
resource "multipass_vm" "vm01" {
  name = "vm01"
  cloud_init = "multipass/files/cloud-init.yaml"
  cpus = "1"
  memory_size = "1G"
  disk_size = "10G"
  image = "18.01"
  }
```