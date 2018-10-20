variable "region" {
  description = "GC region"
}

variable "zone" {
  description = "GC zone"
}

variable "dns_name" {
  description = "Descriptive name for dns_zone. See README.md with example for creating resource google_dns_managed_zone."
}

variable "dns_zone" {
  description = "The DNS zone that is pointing to Google' nameservers (if any). A.k.a. Google' DNS SOA (start of authority). Required suffix: . (dot). See README.md with example for creating resource google_dns_managed_zone."
}

variable "description" {
  description = "dns_managed_zone resource description (optional)"
  default = "Managed by Terraform"
}
