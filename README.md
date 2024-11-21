# assignment


Assignment Overview
This Assignment demonstrates how to create and deploy a static website using various tools such as GitHub, Jenkins, Docker, Amazon S3, and CloudFront CDN. The website consists of two pages, index.html and contact.html, which are served using an Nginx Docker container. The website is hosted on AWS S3 and served via CloudFront CDN for better performance and global access.

Resources:
Ubuntu VM on local Network, GitHub, Docker, Jenkins, Nginx, AWS S3 Bucket and AWS CloudFront

Tools for Learning:
Youtube, ChatGPT, Azure Lernings, KodeKloud

Key Features:

Static Website: Simple HTML pages (index.html, contact.html) served by an Nginx container.
GitHub: Used for version control and CI/CD pipeline configuration.
Jenkins: Automated build and deployment pipeline.
Docker: Used to create a containerized version of the website.
Amazon S3: Cloud storage for static assets.
CloudFront: Content Delivery Network (CDN) for improved performance.

Set Up CI/CD with Jenkins

Install Jenkins:

Installed Jenkins on server (on local machine).
Installed necessary plugins like GitHub Integration, Docker.
Create a new Pipeline job in Jenkins.
Clones the GitHub repository.
Builds the Docker image.
Bulid automated triggers on every changes pushed to git.

Live Website: 
GitHub Repository: https://github.com/rohitsolanki1/assignment.git
Docker Image: https://hub.docker.com/layers/rohitsolanki/assignment/latest/images/sha256:542175cf438e49bdf2371a5823a1c9336d4c1d66b0a352dc6ed4b6ae66670ce7?uuid=22A3F0B0-2585-4C0E-B396-2CBFC3D9AB28
Local Url: 172.17.10.135:9000
GitHub Pages URL: https://rohitsolanki1.github.io/assignment/
S3 Bucket Website Endpoint: http://assignment.v1.s3-website.ap-south-1.amazonaws.com
CloudFront CDN URL: https://d2xt2xj6dpxx0r.cloudfront.net/
