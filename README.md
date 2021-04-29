# Highlight Onpremise
Deploying a self-hosted / on-premise version of Highlight.

## Deploying the Highlight Binary
1. Log into AWS and go the EC2 dashboard; click "Launch Instance"
![image](https://user-images.githubusercontent.com/20292680/116501234-8cad4780-a86d-11eb-8a67-d12693bcfac2.png)
2. Select Ubuntu Server 20.04 LTS (x86)
3. Select the instance type. You should choose at least t2.large as we need at least 8GB of RAM.
4. Give the instance at least 10gb of disk.
5. Create and download a key pair.
![image](https://user-images.githubusercontent.com/20292680/116502242-41e0ff00-a870-11eb-923b-906e9ae4d22a.png)
6. Launch your instanace!

## Configuring a Database
1. Log into AWS and go the RDS dashboard; click "Create Database"
![image](https://user-images.githubusercontent.com/20292680/116501695-b7e46680-a86e-11eb-99c6-1b2b5a30dc3f.png)
2. Select PostgreSQL as the database type.
3. The exact configuration of the database is up to you. We suggest at least 100gb of storage. 
4. Make sure that the DB is running in the same VPC as the EC2 instance.

