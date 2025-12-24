# DevSecOps Assignment – GET 2026

## Project Overview
This project demonstrates DevSecOps practices by containerizing a Python web app, provisioning AWS infrastructure using Terraform, integrating Jenkins CI/CD, and performing infrastructure security scanning using Trivy with AI-driven remediation.

## Architecture
User → Jenkins Pipeline → Trivy Scan → Terraform Plan → AWS EC2 → Dockerized Flask App

## Cloud Provider
AWS (EC2, Security Groups)

## Tools & Technologies
- Python (Flask)
- Docker & Docker Compose
- Terraform
- Jenkins
- Trivy
- AWS

---

## Intentional Security Vulnerability (Before)
- SSH (Port 22) open to `0.0.0.0/0`
- Risk of brute-force attacks and unauthorized access

### Screenshot Required
- Jenkins failing Trivy scan

---

## AI Usage Log (MANDATORY)

### AI Prompt Used
