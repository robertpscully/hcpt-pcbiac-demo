terraform {
  backend "remote" {
    organization = "scullycorp"

    workspaces {
      name = "producer_bucket_config_1"
    }
  }
}

