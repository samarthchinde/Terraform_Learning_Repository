provider "aws" {
    alias = "region1"                     #alise is the key word which is used to define the name of the provider and we can use this name to refer the provider in resource block
    region = "ap-south-1"
}

provider "aws" {
    alias = "region2"
    region= "us-east-1"
}

resource "aws_instance" "example1" {
    provider = aws.region1                  #this will launc the instance in ap-south-1 region
    ami = "ami-07a00cf47dbbc844c"
    instance_type = "t3.micro"
    subnet_id = "subnet-0adf927845a1e17dc"
    key_name = "demo"
}

resource "aws_instance" "example2" {
    provider = aws.region2                     #this will laucnh the instance in us-east-1 region
    ami = "ami-091138d0f0d41ff90"
    instance_type = "t3.micro"
    subnet_id = "subnet-0071eec3dee638e75"
    key_name = "sample"
}
