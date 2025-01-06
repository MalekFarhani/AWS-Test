# AWS-Test
# Static Website Deployment on AWS with S3 and CloudFront

## Objective
This project deploys a simple static website to an AWS S3 bucket and configures a CloudFront CDN for distribution. The infrastructure is managed using Terraform, and the deployment process is automated using Docker.

## Prerequisites
- **Terraform**: Version 1.5.0 or later installed locally or inside Docker.
- **Docker**: To build and run the environment locally.
- **AWS Credentials**: Ensure your AWS credentials are configured in the `~/.aws` directory or as environment variables.

## Setup Instructions

### 1. Clone the repository
```bash
git clone <repository-url>
cd <repository-directory>