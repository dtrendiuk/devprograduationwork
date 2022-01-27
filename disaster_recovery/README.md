# Disaster Recovery Plan
## Overview
This part describes a backup plan in case of problems with region unavailability or another issues with the main infrastructure and contains:
- Terraform code to deploy infrastructure in Amazon AWS
- Ansible playbook to setup servers and restore database backup

## Pre-Requisite
Everything specified on the [main page](https://github.com/dtrendiuk/devprograduationwork#pre-requisite).

## Network diagram of Disaster Recovery
![Green/blue Disaster Recovery network diagram](/docs/network_diagram_dr.png "MarineGEO logo")

## Preparations before the Disaster Recovery deployment.
The main points are indicated on the [main page](https://github.com/dtrendiuk/devprograduationwork#preparations-before-the-deployment-of-the-project).

## Steps to run Disaster Recovery deployment

In addition to the indicated on the main page [main page](https://github.com/dtrendiuk/devprograduationwork#steps-to-run-deployment):

1. Create (or copy existent item) a job for Disaster Recovery deployment in Jenkins (New Item >> Pipeline >> Specify Pipeline script from SCM (Git), Repository URL (like `https://github.com/dtrendiuk/devprograduationwork`), Credentials `jenkins` and Script Path `Jenkins/disaster_recovery.jenkins`).

2. Create new path in the previously created bucket in AWS S3 and correct `Terraform/backend.tf` (for instance, `key = "disaster_recovery/terraform.tfstate"`). Full instructions on this subject can be found at the official [AWS website](https://docs.aws.amazon.com/AmazonS3/latest/userguide/create-bucket-overview.html).

3. Run Jenkins Disaster Recovery Pipeline. Pass all the stages - they will require for your confirmation. The infrastructure will be deployed in AWS `eu-west-2` region. To switch your infrastructure to the Blue stack you need to Apply the last stage `Apply DNS zone switch to blue-deployment in disaster recovery mode` or you can cancel this step. Make sure your domain name works properly (`domain.name/index.html`) and log into phpmyadmin panel through `domain.name/phpmyadmin/`.

If you need to roll your changes back to the main Green stack (`eu-west-2 region`), you need to destroy Terraform infrastructure of Disaster Recovery and run Jenkins Green Pipeline again (in accordance with [p.8](https://github.com/dtrendiuk/devprograduationwork#green-stack)).
