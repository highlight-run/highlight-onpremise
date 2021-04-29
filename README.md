# Highlight Onpremise
Deploying a self-hosted / on-premise version of Highlight.

## Deploying the Highlight Binary
1. Log into AWS and go the EC2 dashboard; click "Launch Instance"
![image](https://user-images.githubusercontent.com/20292680/116501234-8cad4780-a86d-11eb-8a67-d12693bcfac2.png)
2. Select Ubuntu Server 20.04 LTS (x86)
3. Select the instance type. You should choose at least t2.large as we need at least 8GB of RAM.
4. Give the instance at least 10gb of disk.
5. Make sure that the DB is running in a VPC that you can connect the DB to later (the default should be fine).
6. Add security groups for inbound HTTP and HTTPS traffic to your instance as follows:
![image](https://user-images.githubusercontent.com/20292680/116575188-a7aea480-a8cb-11eb-977d-582736c1e592.png)

6. Create and download a key pair.
![image](https://user-images.githubusercontent.com/20292680/116502242-41e0ff00-a870-11eb-923b-906e9ae4d22a.png)
6. Launch your instanace!

## Configuring a Database
1. Log into AWS and go the RDS dashboard; click "Create Database"
![image](https://user-images.githubusercontent.com/20292680/116501695-b7e46680-a86e-11eb-99c6-1b2b5a30dc3f.png)
2. Select PostgreSQL as the database type.
3. The exact configuration of the database is up to you. Using the default from the "dev/test" setting with atleast 100gb of disk space should be sufficient. 
4. Make sure that the DB is running in the same VPC as the EC2 instance.

## Running the Binary
1. With your key pair on your local machine, run:
```bash
chmod 400 my-key-pair.pem && ssh -i "my-key-pair.pem" ubuntu@ec2.something.compute.amazonaws.com
```
You will need to edit the above command to match the path and name of your `.pem` key file as well as the public dns url of your ec2 instance. The username for any ubuntu ec2 instance is `ubuntu` (so no changes required there).
2. Clone this repo on the machine: `git clone https://github.com/highlight-run/highlight-onpremise.git`
3. In the `highlight-onpremise` directory, run:
`chmod u+x ./scripts/*`
`./scripts/get-docker.sh`




