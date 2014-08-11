provider "aws" {
  access_key = "CHANGEME"
  secret_key = "CHANGEME"
  region = "CHANGEME"
}

resource "aws_security_group" "default" {
  name = "terraform_sample"
  description = "terraform sample"
  ingress {
    from_port = "22"
    to_port = "22"
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
