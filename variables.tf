variable "hcloud_token" {
    # use from tfvars
}

variable "ssh_public_key_path" {
  default = "~/.ssh/id_rsa.pub"
}

variable "username" {
  default = "devops"
}

variable "location" {
  default = "nbg1"
}

variable "server_type" {
  default = "cx11"
}

variable "image" {
  default = "ubuntu-20.04"
}

variable "name" {
  default = "k8s-host"
}
