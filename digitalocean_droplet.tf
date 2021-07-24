resource "digitalocean_droplet" "do_droplet" {
    name   = "docker-s-1vcpu-1gb-lon1-01"
    region = "lon1"
    count  = "1"
    tags   = ["terraform"]
    image  = "docker-20-04"
    size   = "s-1vcpu-1gb"
}
