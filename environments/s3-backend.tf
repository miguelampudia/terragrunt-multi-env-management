# Generated by Terragrunt. Sig: nIlQXj57tbuaRZEa
terraform {
  backend "s3" {
    bucket         = "terraform-infraestructura-como-codigo"
    key            = "./terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-infraestructura-como-codigo-locks"
  }
}
