terraform {
  backend "s3" {
    bucket = "dd-poc-backups"
    key    = "terraform-state-backup/terraform-wordpress.tfstate"
    region = "us-east-1"
  }
}
