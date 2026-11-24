provider "aws" {
    region = "us-east-1"
  
}

module "ec2" {
    source = "./modules/ec2-instance"
    ami = "ami-0c55b159cbfafe1f0" #replace this
    type_instance = "t2.micro" #replace this
  
}