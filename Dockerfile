# Start with a lightweight Ubuntu base image
FROM ubuntu:20.04

# Set environment variables to avoid interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Install required dependencies and Terraform
RUN apt-get update && apt-get install -y \
    curl unzip bash \
    && curl -fsSL https://releases.hashicorp.com/terraform/1.5.0/terraform_1.5.0_linux_amd64.zip -o terraform.zip \
    && unzip terraform.zip \
    && mv terraform /usr/local/bin/terraform \
    && chmod +x /usr/local/bin/terraform \
    && rm terraform.zip \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Verify Terraform installation
RUN terraform version

# Set the working directory
WORKDIR /workspace

# Set Terraform as the default entrypoint
ENTRYPOINT ["terraform"]
CMD ["--help"]