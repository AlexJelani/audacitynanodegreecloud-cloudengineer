# AWS Cloud Developer Nanodegree Overview

## Program Description
The AWS Cloud Developer Nanodegree program focuses on teaching developers how to design and deploy applications in the AWS cloud environment. It covers key cloud concepts, services, and technologies to help you effectively build scalable and efficient cloud applications.

## Key Learning Outcomes
- **AWS Fundamentals**: Understand the foundational concepts of cloud computing and how AWS services can be utilized in application development.
- **Application Development**: Learn to design and deploy applications using AWS services such as EC2, S3, RDS, and Lambda.
- **Serverless Architecture**: Gain skills in building serverless applications using AWS Lambda and other serverless technologies.
- **CI/CD Practices**: Implement continuous integration and continuous deployment (CI/CD) practices using AWS Developer tools to automate deployment processes.
- **Infrastructure as Code**: Use tools like AWS CloudFormation and Terraform to manage cloud resources through code.
- **Security Best Practices**: Understand security best practices for managing cloud environments and protecting applications and data.

## Projects
The program typically includes hands-on projects that allow you to apply what you've learned in real-world scenarios, such as:
- Building a fully functional web application hosted on AWS.
- Implementing CI/CD pipelines for automated deployment.
- Developing serverless applications using AWS services.

## Target Audience
The program is designed for:
- Aspiring cloud developers looking to gain practical skills in AWS.
- Software developers who want to transition to cloud application development.
- Individuals seeking to enhance their cloud computing knowledge for career advancement.

## Prerequisites
- Basic understanding of programming concepts (preferably in Python).
- Familiarity with web development concepts can be beneficial.

## Conclusion
The AWS Cloud Developer Nanodegree aims to provide you with the tools and knowledge to excel in cloud development, preparing you for roles that involve building and managing applications in the cloud. By completing this program, you will be well-equipped to tackle cloud-based projects and contribute effectively to your organization’s cloud strategy.

For specific details, it's always best to check the [Udacity website](https://www.udacity.com) directly, as course offerings and content may vary.


## Quick start

You must have an [AWS (Amazon Web Services)](http://aws.amazon.com/) account.

The code consists of Terraform examples using HashiCorp Configuration Language (HCL) on AWS (Amazon Web Services).

All the code is in the [code](/AWS Cloud Fundamentals) folder.

For instructions on running the code, please consult the README in each folder.

This is the list of examples:

* [01-hello-world](AWS Cloud Fundamentals/01-launch-ec2-instance) - Terraform "Hello, World": Example of how to deploy a single server on AWS (Amazon Web Services) using the shortest script.
* [02-one-server](AWS Cloud Fundamentals/02-create-ebs-volume) - Terraform One Server: Example of how deploy a single server on AWS (Amazon Web Services).
* [03-one-webserver](AWS Cloud Fundamentals/03-module-vpc) - Terraform Web Server: Example of how deploy a single web server on AWS (Amazon Web Services). The web server returns "Hello, World" for the URL `/` listening on port 8080.
* [04-one-webserver-with-vars](AWS Cloud Fundamentals/04-basic-lambda-function) - Terraform Web Server with vars: Example of how deploy a single web server on AWS (Amazon Web Services). The web server returns "Hello, World" for the URL `/` listening on port 8080, which is defined as a variable.
* [05-cluster-webserver](AWS Cloud Fundamentals/05-create-lambda-function-with-S3bucket) - Terraform Cluster Web Server: Example of how deploy a cluster of web servers on AWS (Amazon Web Services) using EC2 and Auto Scaling, as well as a load balancer using ELB. The cluster of web servers returns "Hello, World" for the URL `/`. The load balancer listens on port 80.
* [06-create-s3](AWS Cloud Fundamentals/06-create-s3-with-sampletext) - Terraform Create S3: Example of how deploy the creation of a S3 bucket on AWS (Amazon Web Services).
* [07-terraform-state](AWS Cloud Fundamentals/07-create-dynamodbtable) - Terraform State: Example of how to store the information about what infrastructure has been created on AWS (Amazon Web Services).
* [08-file-layout-example](AWS Cloud Fundamentals/08-create-a-noSQLdatabase) - Terraform File Layout: Example that contains a File Layout example of a Terraform file on AWS (Amazon Web Services).
* [09-module-example](AWS Cloud Fundamentals/09-create-a-MySQLDatabase) - Terraform Module: Example that contains a module example of a Terraform file on AWS (Amazon Web Services). It shows how to develop (not duplicating code) web server clusters in different environments using a module.
* [10-multi-repo-example](AWS Cloud Fundamentals/10-create-S3website-with-CloudFront) - Terraform Muti Repo: Example that contains a multi repo example of a Terraform file on AWS (Amazon Web Services). It shows how to develop (not duplicating code) web server clusters in different environments using a module in another repo in order to use different version of the module in the environments.
* [11-loops-example](AWS Cloud Fundamentals/11.1-create-a-load-balancer-with-defaultvpc) - Terraform Loops: Example that contains the loops example of a Terraform file on AWS (Amazon Web Services).
* [12-if-statements-example](AWS Cloud Fundamentals/12-create-an-sns-alert) - Terraform If-Statements & If-Else-Statements: Example that contains an If-Statements and If-Else-Statements example of a Terraform file on AWS (Amazon Web Services).
* [13-if-else-statements-example](AWS Cloud Fundamentals/13-create-sqs-queue-terraform) - Terraform Simple If-Else-Statement: Example that contains the simple If-Else-Statement example of a Terraform file on AWS (Amazon Web Services).
* [14-zero-downtime-deployment](AWS Cloud Fundamentals/14-create-cluster-fargate) - Terraform Zero-Downtime Deployment: Example that contains a zero-downtime deployment example of a Terraform file on AWS (Amazon Web Services).

## License

This code is released under the MIT License. See LICENSE file.
