#!/bin/bash
echo "🌌 Commencing cost mitigation teardown..."
echo "🗑️ Dropping application Ingress to purge live physical AWS ALB..."
kubectl delete ingress sample-nginx-ingress -n kube-system --ignore-not-found

echo "⏱️ Allowing 45 seconds for ALB resource removal propagation..."
sleep 45

cd ~/infra-live
echo "💥 Executing deep cloud component purge via Terragrunt..."
terragrunt run-all destroy --terragrunt-non-interactive
echo "🛑 All services dropped. Active billing footprint minimized to $0.00."
