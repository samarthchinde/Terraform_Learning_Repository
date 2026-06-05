provider "aws" {
    alias = "region1"
    region = "ap-south-1"
}

provider "aws" {
    alias = "region2"
    region= "us-east-1"
}

resource "aws_instance" "example1" {
    provider = aws.region1
    ami = "ami-07a00cf47dbbc844c"
    instance_type = "t3.micro"
    subnet_id = "subnet-0adf927845a1e17dc"
    key_name = "demo"
}

resource "aws_instance" "example2" {
    provider = aws.region2
    ami = "ami-07a00cf47dbbc844c"
    instance_type = "t3.micro"
    subnet_id = "subnet-0adf927845a1e17dc"
    key_name = "demo"
}
