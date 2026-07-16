provider "aws" {
 region = var.region
}

resource "aws_instance" "web" {
 ami = var.ami_id
 instance_type = var.instance_type

 user_data = file("master.sh")
 
 tags = {
  Name = "test"
  }
}
