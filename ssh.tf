resource "hcloud_ssh_key" "default" {
  name       = "busykoala_key"
  public_key = file("~/.ssh/id_rsa.pub")
}
