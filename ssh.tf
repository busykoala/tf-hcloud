resource "hcloud_ssh_key" "default" {
  name       = "tf_pub_key"
  public_key = file(var.ssh_public_key_path)
}
