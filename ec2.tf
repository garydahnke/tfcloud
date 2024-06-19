resource "aws_instance" "ec2_virginia" {
    ami = "ami-0bb84b8ffd87024d8"
    instance_type = "t2.micro"
    provider = aws.virginia
    tags = {
        Name = "Virginia"
    }
}

resource "aws_instance" "ec2_ohio" {
    ami = "ami-033fabdd332044f06"
    instance_type = "t2.micro"
    provider = aws.ohio
    tags = {
        Name = "Ohio"
    }
}