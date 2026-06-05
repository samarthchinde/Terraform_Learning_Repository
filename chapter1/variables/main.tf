provider "aws" {
    region = "ap-south-1"
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

variable "subnet_id" {
    description = "the id of the subnet to launch the instance"
    type = string
    default = "subnet-0adf927845a1e17dc"
}

resource "aws_instance" "demo_instance" {
    ami = var.ami_id
    instance_type = var.instance_type
    subnet_id = var.subnet_id
    key_name = "demo"
}

output "public_ip" {
    description = "this will give public ip of the instance"
    value = aws_instance.demo_instance.public_ip
}