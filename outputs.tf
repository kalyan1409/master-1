
output "vpc_id" {
    value = "${module.VPC.vpc_id}"
}

output "intenet_gateway_id" {
    value = "${module.VPC.internet_gateway_id}"
}

output "public_subnet_ids" {
  value = "${module.SUBNET.public_subnet_ids}"
}

output "private_subnet_ids" {
    value = "${module.SUBNET.private_subnet_ids}"
}
