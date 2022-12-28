provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAUX4B5OAGEVTKZG6E"
  secret_key = "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"
}

resource "aws_instance" "myec2" {
  ami           = "ami-0d593311db5abb72b"
  instance_type = "t2.micro"
}

