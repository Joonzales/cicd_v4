resource "aws_eip" "natip" {
  instance = aws_instance.ec2.id
  vpc = true
}
