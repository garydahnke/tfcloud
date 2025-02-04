provider "aws" {
    region = "us-east-2"
}

data "aws_region" "current" {}

resource "aws_instance" "ec2" {
    ami = lookup(var.ami_map,data.aws_region.current.id)
    instance_type = var.instance_type_list[1]
    tags = {
        Name = var.servername
    }
}

output "aws_region_current_id" {
    value = data.aws_region.current.id
}

output "aws_region_current_name" {
    value = data.aws_region.current.name
}
