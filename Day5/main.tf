#Provider Block
provider "aws" {
  alias  = "virginia"
  region = "us-east-1"
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

  provisioner "remote-exec" {
    inline = [ 
        "echo 'Hello, World!'",
        "sudo yum install python3 -y",
        "sudo yum install nginx -y",
        "sudo service nginx start",
     ]
    
  }

#   provisioner "file" {
#     source = "app.py"
#     destination = "/home/ec2-user/app.py"
    
#   }
  

}