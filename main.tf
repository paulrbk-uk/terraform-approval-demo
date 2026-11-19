terraform {
  required_version = ">= 1.5.0"
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
