# Set the variable value in *.tfvars file
# or using -var="do_token=..." CLI option
variable do_token {}

# Configure the DigitalOcean Provider
provider digitalocean {
  token = var.do_token
}

# Create a web server
resource "digitalocean_droplet" "web" {
  image  = "ubuntu-18-04-x64"
  name   = "web-1"
  region = "NYC1"
  size   = "s-1vcpu-1gb"
  ssh_keys = [digitalocean_ssh_key.default.fingerprint]  
}

resource "digitalocean_ssh_key" "default" {
  name       = "Droplet access."
  public_key = file("~/.ssh/digital_ocean.pem.pub")
}
