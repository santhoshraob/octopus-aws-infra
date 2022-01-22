variable "region" {
  type = string
  default = "us-east-1"
}

variable "tags" {
  type = string
  description = "Tags for infrastructure resources."
  default = "Octopus"
}