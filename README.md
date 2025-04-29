CloudNova - Cloud-Native E-commerce Platform

(Optional: Add a banner later if you want.)

🚀 Project Overview
CloudNova is a fully serverless, containerized, production-ready e-commerce platform built on AWS Cloud, designed to demonstrate real-world DevOps, Cloud, and Microservices architecture practices.

Built for:

High Availability

Scalability

Resilience

Cost Efficiency

🛠️ Tech Stack

Layer	Technologies
Frontend	ReactJS (Hosted on S3 Static Website)
Backend	GoLang Microservices (Order, Product, User)
Database	AWS Aurora Serverless (MySQL)
Messaging	SQS + SNS + EventBridge
Infrastructure	Terraform
Containers	Docker + ECS Fargate
CI/CD	GitHub Actions + AWS CodePipeline
Monitoring	CloudWatch, FluentBit, Prometheus (future)
Secrets Management	AWS Secrets Manager
Security	AWS WAF + Shield Standard
⚡ Key Features
Microservices-based backend (User Service, Product Service, Order Service)

Fully serverless frontend hosting (React App on S3)

AWS Elastic Load Balancer (ALB) integrated with ECS services

Real-time monitoring and alerts using CloudWatch Metrics and Alarms

Secure secret management using AWS Secrets Manager

Scalable infrastructure provisioned through Terraform modules

Zero downtime deployments with Blue-Green strategy

GitOps CI/CD Pipelines with GitHub Actions

⚙️ Architecture Diagram
(You can insert your architecture diagram here once ready!)

🧱 Project Structure
bash
Copy
Edit
CloudNova/
├── app/
│   ├── backend/     # GoLang Microservices
│   └── frontend/    # React Frontend
├── infra/
│   └── terraform/   # Terraform Modules for AWS Resources
├── ci-cd/
│   └── github-actions/ # GitHub Actions YAMLs
├── docs/
│   └── rca/         # Incident RCA Reports
├── README.md
🔥 How to Deploy
Clone the Repository

bash
Copy
Edit
git clone https://github.com/<your-username>/cloudnova-platform.git
cd cloudnova-platform
Infrastructure Deployment (Terraform)

bash
Copy
Edit
cd infra/terraform
terraform init
terraform plan
terraform apply
Backend Microservices

bash
Copy
Edit
cd app/backend/
docker build -t order-service .
docker push <your-ecr-repo-url>:order-service
# Repeat for user-service, product-service
Frontend Deployment

bash
Copy
Edit
cd app/frontend/react-app/
npm install
npm run build
aws s3 sync build/ s3://<your-bucket-name> --delete
View Frontend Access via S3 Website URL or CloudFront.

Monitor & Maintain Use CloudWatch, ECS Console, and FluentBit logs for monitoring!

📊 Observability Features
ECS CPU and Memory Usage Alarms

Container Logs forwarded using FluentBit

RDS Failover Testing

S3 Access Logging

Distributed Tracing (Planned with AWS X-Ray)

📑 RCA (Root Cause Analysis) Reports

Date	Incident	Status
2025-04-29	ECS Task Crash	Resolved
2025-04-27	S3 Website Downtime	Resolved
2025-04-26	RDS Cluster Failover	Auto-Handled
Check docs/rca/ for detailed incident handling examples.

✨ Future Enhancements
Implement AWS CloudFront for Frontend CDN

Full Grafana + Prometheus Monitoring Setup

Blue-Green or Canary Deployment Strategy via CodeDeploy

Cross-Region Disaster Recovery Setup

🧑‍💻 Author
Joshua Veeraiah
AWS Certified DevOps Engineer | Cloud Enthusiast | DevOps Specialist

⭐ Why This Project?
This project simulates real-world cloud-native architectures at scale, preparing me for DevOps, Cloud Engineer, and Site Reliability Engineer (SRE) roles.

