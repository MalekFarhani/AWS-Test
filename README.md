# AWS-Test
# Static Website Deployment on AWS with S3 and CloudFront

## Objective
This project deploys a simple static website to an AWS S3 bucket and configures a CloudFront CDN for distribution. The infrastructure is managed using Terraform, and the deployment process is automated using Docker.

## Prerequisites
- **Docker**: To build and run the environment locally.
- **AWS Credentials**: Ensure your AWS credentials are configured in the `~/.aws` directory or as environment variables.

## Setup Instructions

### Steps to Deploy Static Website on AWS with S3 and CloudFront

1. **Clone the repository**
    ```bash
    git clone <repository-url>
    cd <repository-directory>
    ```

2. **Build the Docker Image**
    Run the following command to build the Docker image for Terraform:
    ```bash
    make build
    ```

3. **Initialize Terraform**
    Initialize the Terraform environment with:
    ```bash
    make init
    ```

4. **Validate Terraform Configuration**
    Validate the Terraform configuration with:
    ```bash
    make validate
    ```

5. **Generate Terraform Plan**
    Create an execution plan to review the changes with:
    ```bash
    make plan
    ```

6. **Apply Terraform Configuration**
    Deploy the infrastructure (S3 bucket and CloudFront distribution) using:
    ```bash
    make apply
    ```
    The `index.html` file is already uploaded to the S3 bucket via the Terraform configuration and is ready to be served through the CloudFront CDN.

7. **Stop the Services**
    When done, shut down the local Docker services:
    ```bash
    make stop
    ```

## File Overview

- **main.tf**: Defines the S3 bucket for static hosting, CloudFront distribution, and associated resources.
- **variables.tf**: Specifies the required variables for the AWS region and bucket name.
- **outputs.tf**: Provides output values such as the bucket name and CloudFront distribution domain.
- **Dockerfile**: Sets up the environment with Terraform and dependencies in a Docker container.
- **Makefile**: Includes commands for building, initializing, validating, planning, applying, and stopping Terraform infrastructure in Docker.
- **docker-compose.yml**: Defines the services for Terraform and LocalStack (optional for local AWS emulation).
- **index.html**: Simple HTML file for the static website with a "Hello" message.