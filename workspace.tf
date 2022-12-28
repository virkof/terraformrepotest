provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAUX4B5OAGEVTKZG6E"
  secret_key = "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"
}

resource "aws_instance" "myec2" {
  ami           = "ami-0d593311db5abb72b"
  instance_type = lookup(var.instance_type, terraform.workspace)
}

variable "instance_type" {
  type = map

  default = {
    default = "t2.nano"
    dev     = "t2.micro"
    prd     = "t2.large"
  }
}
