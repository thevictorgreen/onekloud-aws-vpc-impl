terraform {
  backend "s3" {
    bucket         = "h1-data-platform-non-prod-tf-state"
    key            = "data-platform/dev_v1/vpc/tf.state"
    region         = "us-east-2"
    dynamodb_table = "h1dataplatformnonprod-dev-tf-infra"
  }
}
