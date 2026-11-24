terraform {
  backend "s3" {
    bucket = "terraform-bucket-oct1st"
    key    = "sathya/terraform.tfstate"
    region = "us-east-1"
    encrypt = true
    dynamodb_table = "terraform-lock"
    
  }
}