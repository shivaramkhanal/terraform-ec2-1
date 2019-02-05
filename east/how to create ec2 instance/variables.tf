variable "ami_image"  {
  default = "ami-b70554c8"
}

variable "name" {
  description = "Name of the Instance"
  default = "Instance1"
}

variable "security_groups" {
  default = []
}

variable "subnets" {
  default = "subnet-64e7ac0c"
}

variable "availability_zones" {
  default = "us-east-1b"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  default = "rupesh_vir"
}

variable "vpc" {
  default = "vpc-e5b89f8d"
}
 

