provider "aws" {
  region = "us-east-1"
}

resource "aws_ecs_cluster" "default" {
  name="${var.name}"
  ecs_aws_ami = "${var.ecs_ami}"
  instance_type = "${var.instance_type}"
 }
  
