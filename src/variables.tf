variable "region" {
  type = string
  default = "us-east-1"
}

variable "custom_tags" {
  type = map(any)
  description = "Tags for infrastructure resources."

  default = {
    Department = "IT"
    CostCentre = "ABC123"
    ContactPerson = "andy@tinfoilcipher.co.uk"
    ManagedByTerraform = "True"
}
}