#!/bin/bash
set -e
echo "🌅 Starting daily AWS environment provisioning..."
terragrunt run-all apply --terragrunt-non-interactive
echo "🔒 Updating Kubernetes authentication context..."
aws eks update-kubeconfig --region us-east-1 --name demo-eks
echo "🚀 Bootstrapping Flux CD back into EKS..."
flux bootstrap github --owner=$GITHUB_USER --repository=your-gitops-manifests-repo --branch=main --path=clusters/my-eks-cluster --personal
echo "✨ Setup complete! Everything is online."
