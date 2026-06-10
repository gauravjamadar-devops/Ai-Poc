
terraform {
  source = "../modules/cluster-config"
}

inputs = {
  cluster_name = "demo-eks"
  kubeconfig_output_path = "~/.kube/config"
}

