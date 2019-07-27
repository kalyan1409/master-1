
resource "aws_vpc" "vpc" {
    cidr_block = "${lookup(var.vpc,"cidr")}"
    tags = {
        Name = "${lookup(var.vpc,"name")}"
        Environment = "${var.environment}"
        Terraformed = "True"
        identity="phaninani_ami"
    }
}

resource "aws_internet_gateway" "igw" {
    vpc_id = "${aws_vpc.vpc.id}"
    tags = {
        Name = "${lookup(var.vpc,"name")}"
        Environment = "${var.environment}"
        Terraformed = "True"
    }
}
