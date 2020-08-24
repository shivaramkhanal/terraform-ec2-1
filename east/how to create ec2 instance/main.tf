provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web2" {
  ami = "${var.ami_image}"
  instance_type = "${var.instance_type}"
  tags {
   
  name = "shivaa"
    
 }
  
 }

#resource "aws_iam_instance_profile" "test_profile" {  
#name="profile"
#role="admin"
#}  
