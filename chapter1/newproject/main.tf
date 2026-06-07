
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