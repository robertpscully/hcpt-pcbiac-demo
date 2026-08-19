output test {
    value = "test"
}

module "bucket" {
    source = "app.terraform.io/scullycorp/bucketmanager-interface/aws"
    version = "0.0.5"
    bucket_name = "test-bucket98iwrjsdsviiweqoirjeaklfoirejk"
}

output bucket_config {
    value = module.bucket["bucket_config"]
}

