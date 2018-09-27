
# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = "$DIGITALOCEAN_TOKEN"
}

 # Create a new Web Droplet in the nyc2 region
resource "digitalocean_droplet" "web" {
  image  = "ubuntu-14-04-x64"
  name   = "web-1"
  region = "nyc2"
  size   = "512mb"
}

