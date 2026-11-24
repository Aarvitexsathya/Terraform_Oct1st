#Variable block-map string
variable "type_instance" {
    description = "This is Ec2-Instance type"
    type = map(string)
    default = {
        dev = "t3.micro"
        test = "t3.small"
        prod = "t3.medium"
    }
  
}

#Variable block-List string
variable "type_instance1" {
    description = "This is Ec2-Instance type"
    type = list(string)
    default = ["t3.micro", "t3.small", "t3.medium"]
  
}

#Variable block-set string
variable "type_instance2" {
    description = "This is Ec2-Instance type"
    type = set(string)
    default = ["t3.micro", "t3.small"]
  
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
