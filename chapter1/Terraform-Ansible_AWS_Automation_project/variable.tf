variable "key_pair" {
    description = "Name of the key pair to use for the instances"
    type = string
    default = "demo"
}

variable "instance_type" {
    description = "Type of the AWS instance"
    type = string
    default = "t3.micro"
}

variable "ami_id" {
    description = "AMI ID to use for the instances"
    type = string
    default = "ami-07a00cf47dbbc844c"
}

variable "subnet_id" {
    description = "Subnet ID to launch the instances in"
    type = string
    default = "subnet-0adf927845a1e17dc"
}