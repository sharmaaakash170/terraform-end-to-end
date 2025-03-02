---

### **Terraform End-to-End on GCP 🚀**  
📌 **Automate Infrastructure on Google Cloud with Terraform**  

![Terraform + GCP](https://www.datocms-assets.com/2885/1620155111-blog-terraform.png?auto=format)  

---

## 🌟 **About This Project**  
This repository contains an **end-to-end Terraform project** to automate infrastructure provisioning on **Google Cloud Platform (GCP)**. It covers everything from **basic resource creation** to **advanced configurations** with best practices.  

📍 **Key Features:**  
✅ **Modular Terraform structure** for reusability  
✅ **GCP Services provisioning** (Compute, Networking, IAM, Storage, etc.)  
✅ **Remote backend setup** for state management  
✅ **Automated IAM role assignments**  
✅ **Security best practices** in Terraform  

---

## 🛠 **Technologies Used**  
🔹 Terraform  
🔹 Google Cloud Platform (GCP)  
🔹 IAM, Cloud Storage, Compute Engine  
🔹 Infrastructure as Code (IaC)  

---

## 🚀 **Getting Started**  

### **1️⃣ Prerequisites**  
Ensure you have the following installed:  
✅ **Terraform** → [Install Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)  
✅ **Google Cloud SDK** → [Install gcloud CLI](https://cloud.google.com/sdk/docs/install)  
✅ A GCP Project with **billing enabled**  

---

### **2️⃣ Clone This Repository**  
```sh
git clone https://github.com/sharmaaakash170/terraform-end-to-end.git
cd terraform-end-to-end
```

---

### **3️⃣ Configure Google Cloud Authentication**  
If you're using a **service account**, authenticate using:  
```sh
gcloud auth application-default login
```

Or, set the service account key:  
```sh
export GOOGLE_APPLICATION_CREDENTIALS="/path/to/service-account-key.json"
```

---

### **4️⃣ Initialize Terraform**  
```sh
terraform init
```

---

### **5️⃣ Plan & Apply the Configuration**  
```sh
terraform plan
terraform apply -auto-approve
```

---

### **6️⃣ Destroy the Infrastructure (if needed)**  
```sh
terraform destroy -auto-approve
```
---

## 🛡 **Best Practices Followed**  
✅ **Modularization** for scalability  
✅ **State management** with remote backend  
✅ **Security-first approach** (IAM, least privilege)  
✅ **Terraform fmt & validate** for clean code  

---

## 📢 **Contributing**  
If you find issues or want to add new features, feel free to open a PR! Contributions are welcome. 🚀  

---

## 📞 **Let's Connect!**  
🔗 **LinkedIn:** [Aakash Sharma](https://www.linkedin.com/in/aakash-sharma-8937b81aa/)  
💻 **GitHub:** [sharmaaakash170](https://github.com/sharmaaakash170)  

---

### 🌟 **If you find this project useful, don't forget to ⭐ the repo!**  

---
