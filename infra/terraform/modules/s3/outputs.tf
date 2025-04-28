output "s3_bucket_name" {
  value = aws_s3_bucket.this.id
}

output "s3_bucket_website_endpoint" {
  value = aws_s3_bucket.this.website_endpoint
}
