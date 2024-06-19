resource "aws_instance" "ec2_virginia" {
    ami = "ami-0bb84b8ffd87024d8"
    instance_type = "t2.micro"
    tags = {
        Name = "Virginia"
    }
}