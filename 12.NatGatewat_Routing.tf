resource "aws_route_table" "natrt" {
  vpc_id = aws_vpc.vpc.id
  route {
    cidr_block = var.cidr-block["all"]
    instance_id = aws_instance.ec2.id
  }
  tags = {
    "Name" = "Project-natrt"
  }
}
