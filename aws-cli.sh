#!/bin/bash
sudo apt update
sudo apt install apache2 -y
sudo systemctl start apache2
sudo apt install unzip -y
echo "[default]" > /.aws/credentials
echo "aws_access_key_id = AKIA6KN65HRR2CX4XGW2" >> /.aws/credentials
echo "aws_secret_access_key = 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" >> /.aws/credentials
echo "[default]" > /.aws/config
echo "region = us-east-1" >> /.aws/config
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install -y
aws s3 cp s3://experiment22/s3-index.html /var/www/html
sudo systemctl restart apache2

