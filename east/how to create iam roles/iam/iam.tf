resource "aws_iam_policy" "default" {
  name        = "api-gateway"
  description = "A test policy"
  policy      = "${file("policy.json")}"
}


resource "aws_iam_role" "default" {
  name               = "api-gateway-log"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "apigateway.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_iam_policy_attachment" "default" {
  name       = "api"
  roles      = ["${aws_iam_role.default.name}"]
  policy_arn = "${aws_iam_policy.default.arn}"
}
