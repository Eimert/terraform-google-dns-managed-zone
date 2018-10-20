
resource "google_dns_managed_zone" "managed_zone" {
  # must be unique: ex. prod-zone
  name     = "${var.dns_name}"
  # requires last dot. Ex.: prod.example.com.
  dns_name = "${var.dns_zone}"
  description = "${var.description}"
}

