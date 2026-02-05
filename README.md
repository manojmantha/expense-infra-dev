# Expense Infrastructure – Development Environment

This repository contains the complete **AWS infrastructure setup** for the **Expense application (Dev environment)**.  
It implements a **secure, scalable, and highly available three-tier architecture** using AWS services and Infrastructure as Code (IaC).

---

## 📌 Architecture Overview

The infrastructure is deployed inside a custom AWS VPC and follows a standard **three-tier design**:

- **Frontend Layer (Public)**
- **Backend Layer (Private)**
- **Database Layer (Private)**

The design ensures secure traffic flow from the internet to the database without exposing internal resources.

---

## 🖼 Architecture Diagram

![Expense Architecture](./expense-infra.drawio.svg)

---

## 🌐 Domain Access

Application URL:

https://expense-dev.manojmantha.online


---

## 🏗 AWS Infrastructure Components

### 🔹 Networking
- Custom **VPC** with CIDR `10.0.0.0/16`
- Public Subnets (Multi-AZ)
- Private Subnets (Multi-AZ)
- Database Subnets
- Internet Gateway (IGW)
- NAT Gateway for outbound internet from private subnets

---

### 🔹 Load Balancers

#### Web ALB (Public)
- Listener: **HTTPS : 443**
- Internet-facing
- Routes traffic to Frontend Target Group

#### App ALB (Internal)
- Listener: **HTTP : 80**
- Internal only
- Routes traffic to Backend Target Group

---

### 🔹 Compute (EC2)

#### Frontend EC2
- Deployed in Public Subnets
- Part of Frontend Target Group
- Handles UI and forwards API calls to backend

#### Backend EC2
- Deployed in Private Subnets
- Part of Backend Target Group
- Handles business logic and database communication

---

### 🔹 Database

- **Amazon RDS – MySQL**
- Port: `3306`
- Deployed in Database Subnets
- Not publicly accessible
- Accessible only from Backend EC2 instances

---

## 🔐 Security Design

- Security Groups with least-privilege access
- Backend is not internet-facing
- Database accessible only from backend
- HTTPS termination at Web ALB
- Internal ALB protects backend services

---

## 🔄 Traffic Flow

1. User accesses the application URL
2. Route 53 resolves DNS to Web ALB
3. Web ALB forwards traffic to Frontend EC2
4. Frontend forwards API requests to Internal App ALB
5. App ALB routes traffic to Backend EC2
6. Backend communicates with MySQL RDS

---

## 🛠 Tools & Technologies

- AWS (VPC, EC2, ALB, RDS, Route 53)
- Terraform
- Linux
- HTTPS / SSL

---

## 🚀 Deployment Steps

### Prerequisites
- AWS Account
- IAM user with required permissions
- Terraform installed
- AWS CLI configured
- Ansible-pull used for configuration frontend and backend

### Initialize Terraform
```bash
terraform init

```

### Validate Configuration
```bash
terraform validate

```

### Plan Infrastructure
```bash
terraform plan

```

### 🧹 Destroy Infrastructure
```bash
terraform destroy

```
