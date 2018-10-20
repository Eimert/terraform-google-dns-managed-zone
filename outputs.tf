output dns_name {
  description = "Output name for gc managed dns zone"
  value = "{google_dns_managed_zone.name}"
}

output dns_zone {
  description = "Example output: prod.example.com."
  value = "{google_dns_managed_zone.dns_name}"
}
