## 🏗️ CI/CD Pipeline Overview

1. Code pushed to GitHub
2. Jenkins fetches code from GitHub
3. Terraform provisions AWS infrastructure (EC2 + Security Group)
4. Docker builds the Flask app image
5. Docker container is deployed on the EC2 instance
6. Flask app is accessible via EC2 public IP on port 8080

---

## 🔧 Jenkins Setup

# SSH into your EC2 instance and run:
```
bash install_jenkins.sh
```
# access jenkins via:

```
http://<EC2-Public-IP>:8080
```

# Unlock Jenkins using the initial password found with:

```
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
```

🚀 Deploy Instructions

# 1. Clone the repository

```
git clone https://github.com/your-username/terraform-cicd-aws-pipeline.git
cd terraform-cicd-aws-pipeline
```

# 2. Initialize & Apply Terraform
```
cd terraform
terraform init
terraform apply -auto-approve
```

# 3. Note the EC2 Public IP
You’ll get the public IP from Terraform output.

# 4. Configure Jenkins Job
Use the provided Jenkinsfile for your Jenkins pipeline project. Update the EC2 IP in the deploy step.

# Access the Application
#Once deployed, go to:
```
http://<EC2-Public-IP>:8080
```

#You should see:
```
Hello from Flask on Docker!
```