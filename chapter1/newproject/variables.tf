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