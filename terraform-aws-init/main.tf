resource "aws_instance" "hello_world" {
  ami           = data.aws_ami.amazon_linux_2.id
  subnet_id     = data.aws_subnets.default.ids[0]
  instance_type = "t3.micro"
}
