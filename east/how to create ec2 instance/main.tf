provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web3" {
  ami = "${var.ami_image}"
  instance_type = "${var.instance_type}"
  key_name = "${var.key_name}"
  vpc_security_group_ids = ["sg-a97497e5"]
  user_data       = "${file("userdata.sh")}"
  iam_instance_profile = "${aws_iam_instance_profile.test_profile.name}"
 }

resource "aws_iam_instance_profile" "test_profile" {                                                    
#role = "admin"
}  
