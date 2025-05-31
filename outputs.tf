output "vm_public_ip" {
  value       = azurerm_public_ip.vm_pip.ip_address
  description = "Public IP address of the VM"
}

output "dns_zone_name_servers" {
  value       = azurerm_dns_zone.dnszone.name_servers
  description = "Azure DNS zone nameservers. Update your domain registrar with these."
}

output "dns_a_record_fqdn" {
  value       = "${var.domain_name}"
  description = "Fully qualified domain name pointing to VM IP"
}
