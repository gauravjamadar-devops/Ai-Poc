
terraform {
  source = "../modules/eks"
}

dependency "vpc" {
  config_path = "../vpc"
}

dependency "iam" {
  config_path = "../iam"
}

inputs = {
  cluster_name     = "demo-eks"
  subnet_ids       = dependency.vpc.outputs.subnet_ids
  cluster_role_arn = dependency.iam.outputs.cluster_role_arn
  node_role_arn    = dependency.iam.outputs.node_role_arn
  node_count       = 2
  node_type        = "t3.micro"
}

