#!/bin/bash
sudo apt update
sudo apt install apache2 -y
sudo systemctl start apache2
sudo apt install unzip -y
echo "[default]" > /.aws/credentials
echo "aws_access_key_id = "access key" >> /.aws/credentials
echo "aws_secret_access_key = "secret access key " >> /.aws/credentials
echo "[default]" > /.aws/config
echo "region = us-east-1" >> /.aws/config
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install -y
aws s3 cp s3://experiment22/s3-index.html /var/www/html
sudo systemctl restart apache2

