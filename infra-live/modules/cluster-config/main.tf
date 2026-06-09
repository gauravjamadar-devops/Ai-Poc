
resource "local_file" "kubeconfig" {
  content  = <<EOT
apiVersion: v1
clusters:
- cluster:
    server: https://example.eks.amazonaws.com
  name: ${var.cluster_name}
contexts:
- context:
    cluster: ${var.cluster_name}
    user: aws
  name: ${var.cluster_name}
current-context: ${var.cluster_name}
kind: Config
preferences: {}
users:
- name: aws
EOT
  filename = var.kubeconfig_output_path
}

