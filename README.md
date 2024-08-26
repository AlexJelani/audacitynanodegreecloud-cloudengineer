# Terraform examples on AWS (Amazon Web Services)

Terraform is used to create, manage, and update infrastructure resources such as physical machines, VMs, network switches, containers, and more. Almost any infrastructure type can be represented as a resource in Terraform.

This repo contains [Terraform](https://www.terraform.io/) code examples on AWS (Amazon Web Services).

These examples are based in the book *[Terraform: Up and Running](http://www.terraformupandrunning.com)* by [Yevgeniy Brikman](http://www.ybrikman.com).

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
* [14-zero-downtime-deployment](AWS Cloud Fundamentals/14-zero-downtime-deployment) - Terraform Zero-Downtime Deployment: Example that contains a zero-downtime deployment example of a Terraform file on AWS (Amazon Web Services).

## License

This code is released under the MIT License. See LICENSE file.