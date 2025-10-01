# 🌐 Static Website CI/CD Project

![Jenkins](https://img.shields.io/badge/Jenkins-CI/CD-blue?logo=jenkins) ![Docker](https://img.shields.io/badge/Docker-Container-blue?logo=docker) ![AWS](https://img.shields.io/badge/AWS-S3%2FCloudFront-orange?logo=amazon-aws) ![GitHub](https://img.shields.io/badge/GitHub-Version_Control-black?logo=github)

---

## **Project Overview**

This project demonstrates an **end-to-end CI/CD pipeline** for deploying a static website using:

* GitHub for version control
* Jenkins for automation
* Docker for containerization
* AWS S3 + CloudFront for cloud hosting

The website contains **`index.html`** and **`contact.html`** pages served via an Nginx Docker container.

---

## **Live Demo**

| Platform           | URL                                                                    |
| ------------------ | ---------------------------------------------------------------------- |
| **Local Server**   | `http://172.17.10.133:9001`                                            |
| **GitHub Pages**   | [Visit Site](https://rohitsolanki1.github.io/assignment/)              |
| **AWS S3 Bucket**  | [Visit Site](http://assignment.v1.s3-website.ap-south-1.amazonaws.com) |
| **CloudFront CDN** | [Visit Site](https://d2xt2xj6dpxx0r.cloudfront.net)                    |

---

## **Pipeline Overview**

![Jenkins Pipeline](https://raw.githubusercontent.com/your-username/assignment/main/images/jenkins-pipeline.png)
*Screenshot of Jenkins automated build pipeline*

**Steps in the pipeline:**

1. **Clone GitHub repository**

   * Public repo: [https://github.com/rohitsolanki1/assignment.git](https://github.com/rohitsolanki1/assignment.git)
2. **Stop old Docker containers**
3. **Remove old containers (optional)**
4. **Build Docker image**
5. **Deploy Docker container**

**Build Script Example:**

```bash
# Stop all running Docker containers named "docker"
docker ps -a | grep docker | awk '{print $1}' | xargs -r docker stop

# Optional: Remove old containers
docker ps -a | grep docker | awk '{print $1}' | xargs -r docker rm

# Build Docker image
docker build -t assignment:latest .

# Run Docker container
docker run -d -p 9001:80 --name assignment assignment:latest
```

---

## **Docker Image**

* **Docker Hub Repository:** [View Image](https://hub.docker.com/layers/rohitsolanki/assignment/latest/images/sha256:542175cf438e49bdf2371a5823a1c9336d4c1d66b0a352dc6ed4b6ae66670ce7?uuid=22A3F0B0-2585-4C0E-B396-2CBFC3D9AB28)

---

## **Technology Stack**

| Category           | Tools                                        |
| ------------------ | -------------------------------------------- |
| Operating System   | Ubuntu VM                                    |
| Version Control    | GitHub                                       |
| CI/CD              | Jenkins                                      |
| Containerization   | Docker, Nginx                                |
| Cloud Hosting      | AWS S3, CloudFront                           |
| Learning Resources | YouTube, ChatGPT, KodeKloud, Azure Learnings |

---

## **Project Structure**

```
assignment/
├── index.html
├── contact.html
├── Dockerfile
├── README.md
└── assets/
```

---

## **Key Skills Demonstrated**

* CI/CD pipeline setup using Jenkins
* Containerization with Docker
* Automated website deployment
* Multi-platform hosting (Local, GitHub Pages, AWS S3, CloudFront)
* GitHub version control integration

---

## **Optional Enhancements for Portfolio**

1. Add GIF of Jenkins pipeline execution
2. Add screenshots of live website
3. Show Docker container running (`docker ps`)
4. Highlight automation: new commits trigger rebuild & redeploy

---

### **Why This Project Stands Out**

* Full pipeline automation for a live website
* Multi-platform deployment (Local + Cloud)
* Demonstrates DevOps skills sought by recruiters
* Combines Jenkins, Docker, GitHub, AWS into a single workflow
