provider "aws" {
    region = "ap-south-1"          
}

resource "aws_instance" "Third_server" {
    ami = "ami-07a00cf47dbbc844c"
    subnet_id = "subnet-0adf927845a1e17dc"
    instance_type = "t3.micro"
    key_name = "default"
    security_groups = [ "sg-0f8a67fc4cc8dc542" ]

    tags = {
        name = "Third_server"
    }
}

resource "aws_instance" "first_server" {
    ami = "ami-07a00cf47dbbc844c"
    subnet_id = "subnet-0adf927845a1e17dc"
    instance_type = "t3.micro"
    key_name = "default"
    security_groups = [ "sg-0f8a67fc4cc8dc542" ]

    tags = {
        name = "first_server"
    }
}

resource "aws_instance" "second_server" {
    ami = "ami-07a00cf47dbbc844c"
    subnet_id = "subnet-0adf927845a1e17dc"
    instance_type = "t3.micro"
    key_name = "default"
    security_groups = [ "sg-0f8a67fc4cc8dc542" ]

    tags = {
        name = "second_server"
    }
}
