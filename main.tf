provider "aws" {
  region = "ap-south-1"
  access_key = "AKIAVZEWR56KUKS3X2MW"
  secret_key = "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"
}

resource "aws_instance" "ourfirst" {
  ami = "ami-0447a12f28fddb066"
  instance_type = "t2-micro"
  lifecycle {
  prevent_destroy = true
    ignore_changes = ["ami"]
  }
  
}