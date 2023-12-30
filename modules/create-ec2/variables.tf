variable "ami" {
  default = "ami-0a0f1259dd1c90938"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "instance_count" {
  type    = number
  default = 1
}

variable "key"{
  default = "terraform.pem"
}