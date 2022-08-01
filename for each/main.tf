
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

### for_each (map)
# resource "aws_instance" "web" {
#   for_each = var.loop_name
#   ami           = "ami-09de362f44ba0a166"
#   instance_type = "t2.micro"

#   tags = {
#     Name  = each.value,
#     owner = each.key
#   }
# }

### for each (set)
resource "aws_instance" "web" {
  for_each = toset(var.set)
  ami           = "ami-09de362f44ba0a166"
  instance_type = "t2.micro"

  tags = {
    Name  = each.key,
    owner = "anshul"
  }
}