variable "region" {
  default = "ap-south-1"
}

variable "public_subnet" {
  default = "10.0.1.0/24"
}

variable "private_subnet" {
  default = "10.0.2.0/24"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}
