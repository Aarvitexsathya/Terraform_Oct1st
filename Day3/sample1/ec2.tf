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
