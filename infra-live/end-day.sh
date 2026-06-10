
#cat << 'EOF' > ~/infra-live/end-day.sh
#!/bin/bash
echo "🌌 Commencing cost mitigation teardown..."

echo "🗑️ Deleting Crossplane S3 Bucket resource from AWS..."
kubectl delete -f clusters/my-eks-cluster/apps/crossplane-s3-bucket.yaml --ignore-not-found

echo "🗑️ Dropping application Ingress to purge live physical AWS ALB..."
kubectl delete ingress sample-nginx-ingress -n kube-system --ignore-not-found

echo "⏱️ Allowing 60 seconds for ALB and Crossplane S3 cloud deletions to complete..."
sleep 60

cd ~/infra-live
echo "💥 Executing deep cloud component purge via Terragrunt..."
terragrunt run-all destroy --terragrunt-non-interactive
echo "🛑 All services dropped. Active billing footprint minimized to $0.00."
#EOF
#chmod +x ~/infra-live/end-day.sh

