data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = "duclo-terraform-tfstate"
    key    = "terraform-file/eks/terraform.tfstate"
    region = "us-west-2"
  }
}
