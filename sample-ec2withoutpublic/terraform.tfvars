environment        = "stage"
account            = "shipium-stage"
region             = "us-west-2"
ami_id             = "ami-0d8ff527aeca17d19" # Update with latest AMI
instance_type      = "t2.micro"
subnet_id          = "subnet-0cbecf5367747c0ac"
security_group_ids = ["sg-06aa0e893d1222513"]
key_name           = "shipium-infra-ssh-key"
instance_name      = "aegis-ec2-new1"

tags = {
  Environment = "stage"
  ManagedBy   = "terraform"
  Project     = "poc-ec2"
}

