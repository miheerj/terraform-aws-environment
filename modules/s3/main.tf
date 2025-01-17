resource "aws_s3_bucket" "bucket" {
  bucket = "${var.project_name}-bucket"
  acl    = "private"

  tags = {
    Name = "${var.project_name}-s3"
  }
}

output "s3_bucket_name" {
  value = aws_s3_bucket.bucket.id
}
