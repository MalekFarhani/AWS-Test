output "bucket_name" {
  value = aws_s3_bucket.static_website.bucket
}

output "cloudfront_domain" {
  value = aws_cloudfront_distribution.s3_distribution.domain_name
}
