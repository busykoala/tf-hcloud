terraform {
  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "~> 1.32"
    }
  }
}

provider "hcloud" {
  token   = var.hcloud_token
}

data template_file "userdata" {
  template = file("${path.module}/templates/userdata.yml")

  vars = {
    username = var.username
    ssh_public_key = file(var.ssh_public_key_path)
  }
}

resource "hcloud_server" "master" {
  name        = var.name
  image       = var.image
  server_type = var.server_type
  location    = var.location
  ssh_keys    = [hcloud_ssh_key.default.id]
  user_data   = data.template_file.userdata.rendered
}
