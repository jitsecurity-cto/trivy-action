module "jit-teams-images" {
  source                        = "../s3-bucket"
  bucket_name                   = "jit-teams-images"
  stage                         = var.stage
  count = var.local_deployment ? 0 : 1
}
