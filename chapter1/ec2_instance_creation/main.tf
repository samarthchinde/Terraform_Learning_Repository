provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "fist_instance" {
    ami = "ami-07a00cf47dbbc844c"
    instance_type = "t3.micro"
    subnet_id = "subnet-0adf927845a1e17dc"
    key_name = "default"
    security_groups = ["sg-0f8a67fc4cc8dc542"]

    tags = {
      name = "first instance"
    }
}