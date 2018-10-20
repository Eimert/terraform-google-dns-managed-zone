# terraform-google-dns-managed-zone

Create a DNS managed zone on Google Cloud.<br>

## Usage

1. Create a new directory for this terraform configuration.
2. Create a main.tf, for example:
```bash
# Configure the Google Cloud provider
provider "google" {
  credentials = "${file("king-of-my-google-cloud-castle.json")}"
  project     = "smashing-dash-1992"
}

module "google-dns-managed-zone" {
  source          = "github.com/Eimert/terraform-google-dns-managed-zone"

  dns_name        = "cloud-zone"
  dns_zone        = "cloud.eimertvink.nl."
}
```
3. ```terraform init```
4. ```terraform plan``` Boom! Credentials file missing.
5. Add your google cloud credentials in a .json file. [Getting started guide](https://www.terraform.io/docs/providers/google/getting_started.html#adding-credentials)

> Keep the Google Cloud credentials in a safe place. Don't push them to Git.

6. Adapt the Terraform variables in `main.tf` to match your Google cloud project name, and VM requirements. All optional parameters can be found in [variables.tf](./variables.tf).
5. Let terraform fire up the VM's:
```bash
terraform apply
```
6. Wait a few ~~minutes~~ seconds.
7. Optionally see the created resources in [Google Cloud Console](https://console.cloud.google.com/net-services/dns/zones/)
8. Break down the resources:
```bash
terraform destroy
```

## VM + DNS A record

This module can be used to register a type A (name) DNS record, linking a DNS name to a VM ip address. Terraform usage example in [github.com/Eimert/terraform-google-compute-engine-instance](https://github.com/Eimert/terraform-google-compute-engine-instance).

