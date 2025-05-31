variable "resource_group_name" {
  default = "rg-domain-demo"
}

variable "location" {
  default = "East US"
}

variable "admin_username" {
  default = "vikas"
}

variable "admin_password" {
  default     = "P@ssword1234!"
  sensitive   = true
}

variable "domain_name" {
  description = "Your registered domain name (must be managed by Azure DNS for this example)"
  type        = string
}
