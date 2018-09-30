
# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = "${var.DO_TOKEN}"
}

resource "digitalocean_droplet" "kubernetes" {
  ssh_keys           = "${var.SSH_KEY}"
  image              = "ubuntu-16-04-x64"
  region             = "nyc3"
  size               = "s-1vcpu-1gb"
  private_networking = true
  ipv6               = true
  name               = "kubernetes"
}

