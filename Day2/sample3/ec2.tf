#resuorce block1 - Map String
resource "aws_instance" "Terraform-Instance1" {
  ami           = var.ami
  instance_type = var.type_instance["dev"]
  provider      = aws.virginia
  tags = {
    name     = "Terraform-Instance"
    Teamname = "DevOps"
  }

}

#resuorce block2 - List String
resource "aws_instance" "Terraform-Instance2" {
  ami           = var.ami
  instance_type = var.type_instance1[1]
  provider      = aws.virginia
  tags = {
    name     = "Terraform-Instance"
    Teamname = "DevOps"
  }

}

#resuorce block2 - set String
#If you want to create a multiple instance with different types but you have to use the sing resource block and single variable block
#Use Set String
resource "aws_instance" "Terraform-Instance3" {
  ami           = var.ami
  for_each  = var.type_instance2
  instance_type = each.value
  provider      = aws.virginia
  tags = {
    name     = "Terraform-Instance"
    Teamname = "DevOps"
  }

}