resource "aws_instance" "app" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  tags = {
    Name = "${var.project_name}-ec2"
  }
}

output "ec2_instance_id" {
  value = aws_instance.app.id
}
