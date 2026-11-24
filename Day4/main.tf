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
  count = 2
  tags = {
    name     = "Terraform-Instance"
    Teamname = "DevOps"
  }

}

resource "aws_s3_bucket" "TerraformBucketOct1st" {
    bucket = "terraform-bucket-oct1st"
    
    tags = {
        Name        = "TerraformBucketOct1st"
        Environment = "DevOps"
    }


}

resource "aws_dynamodb_table" "terraform-lock" {
  name         = "terraform-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name        = "TerraformLockTable"
    Environment = "DevOps"
  }
  
}