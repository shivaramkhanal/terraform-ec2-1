provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web3" {
  ami = "${var.ami_image}"
  instance_type = "${var.instance_type}"
  key_name = "${var.key_name}"
  vpc_security_group_ids = ["${aws_security_group.securitygr.name}"]
  user_data       = "${file("userdata.sh")}"
  iam_instance_profile = "${aws_iam_instance_profile.test_profile.name}"
 }

resource "aws_iam_instance_profile" "test_profile" {                                                    
#role = "admin"
}  

resource "aws_security_group" "securitygr" {
  name        = "security"
  description = "create security group"
  vpc      = "default"

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
   ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  

  egress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
   egress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


}
