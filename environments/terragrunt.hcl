# remote_state {
#   backend = "s3"
#   config = {
#     bucket         = "terraform-infraestructura-como-codigo"
#     key            = "${path_relative_to_include()}/terraform.tfstate"
#     region         = "us-east-1"
#     encrypt        = true
#     dynamodb_table = "terraform-infraestructura-como-codigo-locks"
#   }
# }
generate "backend" {
  path      = "s3-backend.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
terraform {
    backend "s3" {
        bucket         = "terraform-infraestructura-como-codigo"
        key            = "${path_relative_to_include()}/terraform.tfstate"
        region  = "us-east-1"
        encrypt = true
        dynamodb_table = "terraform-infraestructura-como-codigo-locks"
    }
}
EOF
}
