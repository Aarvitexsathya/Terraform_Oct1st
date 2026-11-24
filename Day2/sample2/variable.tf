#Variable block
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

variable "vpc_cidr" {
    default = "10.3.0.0/16"
  
}

variable "vpc_name" {
    default = "terraform-vpc"
  
}
