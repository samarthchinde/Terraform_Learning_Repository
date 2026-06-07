provider "aws" {
    alias  = "mumbai"
    region = "ap-south-1"
}

provider "aws" {
    alias  = "virginia"
    region = "us-east-1"
}

variable "ami_id_mumbai" {
    description = "The AMI ID to use for the instance"
    type = string
    default = "ami-07a00cf47dbbc844c"
}

variable "instance_type" {
    description = "The type of instance to launch"
    type = string
    default = "t3.micro"
}

variable "ami_id_virginia" {
    description = "The AMI ID to use for the instance"
    type = string
    default = "ami-091138d0f0d41ff90"
}

resource "aws_instance" "instance_one" {
    provider = aws.mumbai
    ami           = var.ami_id_mumbai
    instance_type = var.instance_type
    subnet_id = "subnet-04ab788e750ad5ea3"
}

resource "aws_instance" "instance_two" {
    provider = aws.virginia
    ami           = var.ami_id_virginia
    instance_type = var.instance_type
    subnet_id = "subnet-0ca4693934d2800f3"
}

output "public_ip_instance_one" {
    value = aws_instance.instance_one.public_ip
}

output "public_ip_instance_two" {
    value = aws_instance.instance_two.public_ip
}