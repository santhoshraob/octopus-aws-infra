variable "region" {
  type = string
  default = "us-east-1"
}

variable "tags" {
  type = map(string)
  description = "Tags for infrastructure resources."
  default = {
    Name = "Octopus"
  }
}