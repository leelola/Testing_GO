terraform {
  required_providers {
      aws = {
          source ="hashicorp/aws"
          version = "3.7.0"
      }
  }
}

provider "aws" {
    region = var.region
  
}

module "webserver" {
  source = "../../"
  
  servername = var.servername
  size = "t3.micro"
}
output "publicIP" {
  value = module.webserver.publicIP
}