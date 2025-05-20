# mypersonalsite
using terraform with gcp to deploy my ownwebpage

# 🌐 Personal Webpage Deployment using Terraform on Google Cloud

This project automates the deployment of a personal HTML/CSS/JavaScript-based static website to **Google Cloud Platform (GCP)** using **Terraform**.

## 🚀 Features

- Infrastructure as Code (IaC) with Terraform
- Static website hosted on **Google Cloud Storage (GCS)**
- Configured as a public website with an index page
- Easy deployment and teardown

## 📁 Project Structure

```

.
├── main.tf               # Main Terraform configuration
├── variables.tf          # Input variables
├── outputs.tf            # Output values
├── terraform.tfvars      # Actual values for variables
├── index.html            # Your personal homepage
└── README.md             # Project documentation

````

## 🔧 Prerequisites

- [Google Cloud SDK](https://cloud.google.com/sdk/docs/install)
- [Terraform](https://developer.hashicorp.com/terraform/downloads)
- A Google Cloud project with billing enabled

## 🛠️ Setup Instructions

### 1. Authenticate and Set Project

```bash
gcloud auth login
gcloud config set project mywebpage-460319
````

### 1. Clone the repository

```bash
git clone https://github.com/Sanjaykumar786/personal_website_gcp.git
cd your-repo-name
````

### 2. Initialize Terraform

```bash
terraform init
```
### 3. preview Changes in terraform

```bash
terraform plan
```

### 4. Deploy Infrastructure

```bash
terraform apply
```

Type `yes` to confirm.

### 5. Upload Web Files (if not automated in Terraform)

```bash
gsutil cp index.html gs://your-unique-gcs-bucket-name
```

### 6. View Your Website

Open the website URL provided in the Terraform output, typically:

```
http://your-unique-gcs-bucket-name.storage.googleapis.com/index.html
```

Or if website hosting is configured:

```
http://storage.googleapis.com/your-unique-gcs-bucket-name
```

## 📦 Clean Up

To delete all created resources:

```bash
terraform destroy
```

---

## 📄 License

This project is licensed under the [MIT License](LICENSE).

## 🙋‍♂️ Author

**Sanjay Kumar**
📧 [sanjaydhaka47@gmail.com](mailto:sanjaydhaka47@gmail.com)
---
