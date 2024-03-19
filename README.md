# Terraform Blue Green Deployment & Terraform Canary Deployment 🔵🐣🟢 AWS | ALB | EC2

[Step by Step Tutorial](https://youtu.be/6Pw6GabncRo)

# Enable Green deployment with 10% Traffic
terraform apply -var 'traffic_distribution=blue-90' -var 'enable_green_env=true' --auto-approve

# Split 50% Traffic
terraform apply -var 'traffic_distribution=split' -var 'enable_green_env=true' --auto-approve

# Switch 90% Traffic to green deployment
terraform apply -var 'traffic_distribution=green-90' -var 'enable_green_env=true' --auto-approve

# Disable blue deployment and swtich to green with 100% Traffic
 terraform apply -var 'traffic_distribution=green' -var 'enable_blue_env=false' -var 'enable_green_env=true' --auto-approve