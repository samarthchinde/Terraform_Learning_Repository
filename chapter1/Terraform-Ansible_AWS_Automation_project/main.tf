resource "aws_instance" "Third_server" {
    provider = aws.mumbai
    ami = var.ami_id
    subnet_id = var.subnet_id
    instance_type = var.instance_type
    key_name = var.key_pair
    security_groups = [ "sg-0f8a67fc4cc8dc542" ]

    tags = {
        name = "Third_server"
    }
}

resource "aws_instance" "first_server" {
    provider = aws.mumbai
    ami = var.ami_id
    subnet_id = var.subnet_id
    instance_type = var.instance_type
    key_name = var.key_pair
    security_groups = [ "sg-0f8a67fc4cc8dc542" ]

    tags = {
        name = "first_server"
    }
}

resource "aws_instance" "second_server" {
    provider = aws.mumbai
    ami = var.ami_id
    subnet_id = var.subnet_id
    instance_type = var.instance_type
    key_name = var.key_pair
    security_groups = [ "sg-0f8a67fc4cc8dc542" ]

    tags = {
        name = "second_server"
    }
}
