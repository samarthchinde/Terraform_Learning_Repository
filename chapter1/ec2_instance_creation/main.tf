provider "aws" {
    region = "ap-south-1"           # adding region to provider block (opional)
}

resource "aws_instance" "fist_instance" {
    ami = "ami-07a00cf47dbbc844c"           # ami id for launching an instance in ap-south-1 region
    instance_type = "t3.micro"
    subnet_id = "subnet-0adf927845a1e17dc"   # subnet id for launching an instance in ap-south-1 region
    key_name = "default"
    security_groups = ["sg-0f8a67fc4cc8dc542"]  # add seurity group to the instance (add subnet id)

    tags = {                                  # adding tags to the instance
      name = "first instance"
    }
}

resource "aws_instance" "second_instance" {
    ami = "ami-07a00cf47dbbc844c"
    instance_type = "t3.micro"
    subnet_id = "subnet-0adf927845a1e17dc"
    key_name = "default"
    security_groups = ["sg-0f8a67fc4cc8dc542"]

    tags = {
      name = "second instance"
    }
}

resource "aws_instance" "third_instance" {
    ami = "ami-07a00cf47dbbc844c"
    instance_type = "t3.micro"
    subnet_id = "subnet-0adf927845a1e17dc"
    key_name = "default"
    security_groups = ["sg-0f8a67fc4cc8dc542"]

    tags = {
      name = "thid instance"
    }
}