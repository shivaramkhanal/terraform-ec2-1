variable "ami_image"  {
  default = "ami-02354e95b39ca8dec"
}

variable "name" {
  description = "Name of the Instance"
  default = "Instance1"
}

#variable "security_groups" {
 # default = ["sg-017011d5ea42dde9b"]
#}

variable "subnets" {
  default = "subnet-00e0283e"
}

variable "availability_zones" {
  default = "us-east-1e"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  default = "cba"
}

variable "vpc" {
  default = "vpc-8d4d9cf7"
}
 

