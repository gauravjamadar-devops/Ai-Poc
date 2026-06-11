#cat << 'EOF' > down.sh
#!/bin/bash
echo "🌌 Initiating end-of-day resource teardown..."
echo "🗑️ Deleting Kubernetes Ingress to clear active AWS ALB..."
kubectl delete ingress sample-nginx-ingress -n kube-system --ignore-not-found
echo "⏱️ Waiting for ALB to clear..."
sleep 45
echo "💥 Destroying all cloud infrastructure via Terragrunt..."
terragrunt run-all destroy --terragrunt-non-interactive
echo "🛑 All services destroyed. Overnight costs reduced to zero."
EOF
#chmod +x down.sh
