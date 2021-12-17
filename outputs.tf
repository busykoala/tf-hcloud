output "master_ip_addr" {
  value = [hcloud_server.master.ipv4_address]
}
