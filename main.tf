module "dataplatform-dev-vpc-us-east-2" {
  source = "../../modules/vpc"

  name = "data-platform-dev"

  cidr = "10.155.0.0/16"

  azs             = ["us-east-2a", "us-east-2b"]
  private_subnets = ["10.155.0.0/18", "10.155.128.0/18"]
  public_subnets  = ["10.155.64.0/18", "10.155.192.0/18"]

  enable_s3_endpoint = true

  tags = {
    Owner       = "data-platform"
    Environment = "dev"
  }

  vpc_tags = {
    Name = "data-platform-dev"
  }
}


resource "aws_route53_zone" "dns_private_zone" {
  name = var.dns_private_zone_name
  vpc {
    vpc_id = module.dataplatform-dev-vpc-us-east-2.vpc_id
  }
}

resource "aws_route53_zone" "dns_reverse_zone" {
  name = var.dns_reverse_zone_name
  vpc {
    vpc_id = module.dataplatform-dev-vpc-us-east-2.vpc_id
  }
}
