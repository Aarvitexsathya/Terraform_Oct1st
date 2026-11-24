#Provider Block
provider "aws" {
  alias  = "virginia"
  region = "us-east-1"
}

provider "aws" {
  alias  = "ohio"
  region = "us-east-2"
}

#resuorce block1 - us-east-1
resource "aws_instance" "Terraform-Instance" {
  ami           = "ami-096ef200a877f36af"
  instance_type = "t3.micro"
  provider      = aws.virginia
  tags = {
    name     = "Terraform-Instance"
    Teamname = "DevOps"
  }

}

#resuorce block2 - ohio
resource "aws_instance" "Terraform-Instance1" {
  ami           = "ami-0df8a753693e6366d"
  instance_type = "t3.micro"
  provider      = aws.ohio

}