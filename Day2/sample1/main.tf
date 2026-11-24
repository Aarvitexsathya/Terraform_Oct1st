#Provider Block
provider "aws" {
  alias  = "virginia"
  region = "us-east-1"
}

variable "type_instance" {
    default = "t3.micro"
    description = "This is Ec2-Instance type"
    type = string
  
}

variable "ami" {
    default = "ami-096ef200a877f36af"
    description = "This is Ec2-Instance AMI"
    type = string
  
}

#resuorce block1 - us-east-1
resource "aws_instance" "Terraform-Instance" {
  ami           = var.ami
  instance_type = var.type_instance
  provider      = aws.virginia
  tags = {
    name     = "Terraform-Instance"
    Teamname = "DevOps"
  }

}

#resuorce block1 - us-east-1
resource "aws_instance" "import-instance" {
  ami           = "ami-00f43ee0e98d52529"
  instance_type = "t3.micro"
  provider      = aws.virginia
  tags = {
    name     = "Terraform-Instance"
    Teamname = "DevOps"
  }

}

output "public_ip" {
  value = aws_instance.Terraform-Instance.public_ip

  #pattern: resiurce_type.resource_name.attribute
  
}
