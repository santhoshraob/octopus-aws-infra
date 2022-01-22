variable "region" {
  type = string
  default = "us-east-1"
}

variable "tags" {
  type = map(string)
  description = "Tags for infrastructure resources."
  default = {}
}

variable "project" {
  type = string
  default = "Octopus"
}