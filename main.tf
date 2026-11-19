
terraform {
  required_version = ">= 1.5.0"

  cloud {
    organization = "sunxnetz-lab"

    workspaces {
      name = "terraform-approval-demo"
    }
  }
}

resource "terraform_data" "demo" {
  input = {
    project = "terraform-approval-demo"
    message = "Deployment approved"
  }
}

output "deployment_message" {
  value = terraform_data.demo.output.message
}
