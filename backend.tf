data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = "terraform-remote-tfstates-duclo-nonprod"
    key    = "dynamodb_table/terraform.tfstate"
    region = "us-west-2"
  }
}
