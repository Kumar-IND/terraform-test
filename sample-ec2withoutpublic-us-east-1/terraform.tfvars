environment        = "stage"
account            = "shipium-stage"
region             = "us-east-1"
ami_id             = "ami-08d7aabbb50c2c24e" # Update with latest AMI
instance_type      = "t2.micro"
subnet_id          = "subnet-094fb4ef11c164dc1"
security_group_ids = ["sg-0b7f8c202868aa6d2"]
key_name           = "shipium-infra-ssh-key"
instance_name      = "aegis-ec2-new1"

tags = {
  Environment = "stage"
  ManagedBy   = "terraform"
  Project     = "poc-ec2"
}

