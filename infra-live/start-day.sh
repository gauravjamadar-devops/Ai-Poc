#!/bin/bash
set -e
cd ~/infra-live
echo "🌅 Provisioning your AWS EKS Architecture Stack..."
terragrunt run-all apply --terragrunt-non-interactive

echo "🔐 Re-authenticating local Kubernetes workspace context..."
aws eks update-kubeconfig --region us-east-1 --name demo-eks

echo "🚀 Re-injecting GitOps engine (Flux CD)..."
flux bootstrap github \
  --owner=$GITHUB_USER \
  --repository=your-gitops-manifests-repo \
  --branch=main \
  --path=clusters/my-eks-cluster \
  --personal
echo "✨ All components online and operating clean!"
