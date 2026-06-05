provider "aws" {
    region = "ap-southeast-1"
}

variable "ami_id" {
    description = "the id of the ami to use for the instance"
    type = string
    default = "ami-07a00cf47dbbc844c"
}

variable "instance_type" {
    description = "the type of instance to use"
    type = string
    default = "t3.micro"
}

resource "aws_instance" "demo_instance" {
    ami = var.ami_id
    instance_type = var.instance_type
    subnet_id = "subnet-0adf927845a1e17dc"
    key_name = "demo"
}

output "public_ip" {
    description = "this will give public ip of the instance"
    value = aws_instance.demo_instance.public_ip
}