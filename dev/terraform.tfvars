project_name       = "aws-terraform-dev"
cidr_block         = "10.0.0.0/16"
public_subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
ami_id             = "ami-0abcd12345efgh678"
instance_type      = "t2.micro"
allocated_storage  = 20
engine_version     = "8.0"
db_name            = "dev_database"
username           = "dev_admin"
password           = "dev_securepassword"
region             = "us-east-1"
