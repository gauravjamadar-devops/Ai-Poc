                "elasticloadbalancing:CreateLoadBalancer",
                "elasticloadbalancing:CreateTargetGroup",
                "elasticloadbalancing:CreateListener",
                "elasticloadbalancing:DeleteListener",
                "elasticloadbalancing:CreateRule",
                "elasticloadbalancing:DeleteRule"
            ],
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": [
                "elasticloadbalancing:ModifyLoadBalancerAttributes",
                "elasticloadbalancing:ModifyTargetGroupAttributes",
                "elasticloadbalancing:SetIpAddressType",
                "elasticloadbalancing:SetSecurityGroups",
                "elasticloadbalancing:SetSubnets",
                "elasticloadbalancing:DeleteLoadBalancer",
                "elasticloadbalancing:DeleteTargetGroup",
                "elasticloadbalancing:RegisterTargets",
                "elasticloadbalancing:DeregisterTargets"
            ],
            "Resource": "*"
        }
    ]
}
EOF

aws iam create-policy-version     --policy-arn arn:aws:iam::459119164101:policy/AWSLoadBalancerControllerIAMPolicy     --policy-document file://iam_policy.json     --set-as-default
kubectl rollout restart deployment aws-load-balancer-controller -n kube-system
kubectl get ingress sample-nginx-ingress -n kube-system
kubectl get ingress sample-nginx-ingress -n kube-system - watch
kubectl get ingress sample-nginx-ingress -n kube-system -watch
kubectl get ingress sample-nginx-ingress -n kube-system -w
#
kubectl logs -n kube-system -l app.kubernetes.io/name=aws-load-balancer-controller --tail=40
cat << 'EOF' > iam_policy.json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "iam:CreateServiceLinkedRole",
                "ec2:DescribeAccountAttributes",
                "ec2:DescribeAddresses",
                "ec2:DescribeAvailabilityZones",
                "ec2:DescribeInternetGateways",
                "ec2:DescribeVpcs",
                "ec2:DescribeSubnets",
                "ec2:DescribeSecurityGroups",
                "ec2:DescribeInstances",
                "ec2:DescribeTags",
                "elasticloadbalancing:DescribeLoadBalancers",
                "elasticloadbalancing:DescribeLoadBalancerAttributes",
                "elasticloadbalancing:DescribeListeners",
                "elasticloadbalancing:DescribeListenerAttributes",
                "elasticloadbalancing:DescribeRules",
                "elasticloadbalancing:DescribeTargetGroups",
                "elasticloadbalancing:DescribeTargetGroupAttributes",
                "elasticloadbalancing:DescribeTargetHealth",
                "elasticloadbalancing:DescribeTags",
                "elasticloadbalancing:DescribeTrustStores",
                "cognito-idp:DescribeUserPoolClient",
                "acm:ListCertificates",
                "acm:DescribeCertificate",
                "iam:ListServerCertificates",
                "iam:GetServerCertificate",
                "wafv2:GetWebACL",
                "wafv2:GetWebACLForResource",
                "shield:GetSubscriptionState"
            ],
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": [
                "ec2:AuthorizeSecurityGroupIngress",
                "ec2:RevokeSecurityGroupIngress",
                "ec2:CreateSecurityGroup",
                "ec2:CreateTags",
                "ec2:DeleteTags"
            ],
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": [
                "elasticloadbalancing:CreateLoadBalancer",
                "elasticloadbalancing:CreateTargetGroup",
                "elasticloadbalancing:CreateListener",
                "elasticloadbalancing:DeleteListener",
                "elasticloadbalancing:CreateRule",
                "elasticloadbalancing:DeleteRule",
                "elasticloadbalancing:AddTags",
                "elasticloadbalancing:RemoveTags"
            ],
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": [
                "elasticloadbalancing:ModifyLoadBalancerAttributes",
                "elasticloadbalancing:ModifyTargetGroupAttributes",
                "elasticloadbalancing:SetIpAddressType",
                "elasticloadbalancing:SetSecurityGroups",
                "elasticloadbalancing:SetSubnets",
                "elasticloadbalancing:DeleteLoadBalancer",
                "elasticloadbalancing:DeleteTargetGroup",
                "elasticloadbalancing:RegisterTargets",
                "elasticloadbalancing:DeregisterTargets"
            ],
            "Resource": "*"
        }
    ]
}
EOF

aws iam create-policy-version     --policy-arn arn:aws:iam::459119164101:policy/AWSLoadBalancerControllerIAMPolicy     --policy-document file://iam_policy.json     --set-as-default
kubectl rollout restart deployment aws-load-balancer-controller -n kube-system
kubectl get ingress sample-nginx-ingress -n kube-system
kubectl get ingress sample-nginx-ingress -n kube-system -w
kubectl get ingress sample-nginx-ingress -n kube-system
kubectl logs -n kube-system -l app.kubernetes.io/name=aws-load-balancer-controller --tail=40
cat << 'EOF' > iam_policy.json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
                "iam:CreateServiceLinkedRole",
                "ec2:DescribeAccountAttributes",
                "ec2:DescribeAddresses",
                "ec2:DescribeAvailabilityZones",
                "ec2:DescribeInternetGateways",
                "ec2:DescribeVpcs",
                "ec2:DescribeSubnets",
                "ec2:DescribeSecurityGroups",
                "ec2:DescribeInstances",
                "ec2:DescribeTags",
                "elasticloadbalancing:DescribeLoadBalancers",
                "elasticloadbalancing:DescribeLoadBalancerAttributes",
                "elasticloadbalancing:DescribeListeners",
                "elasticloadbalancing:DescribeListenerAttributes",
                "elasticloadbalancing:DescribeRules",
                "elasticloadbalancing:DescribeTargetGroups",
                "elasticloadbalancing:DescribeTargetGroupAttributes",
                "elasticloadbalancing:DescribeTargetHealth",
                "elasticloadbalancing:DescribeTags",
                "elasticloadbalancing:DescribeTrustStores",
                "cognito-idp:DescribeUserPoolClient",
                "acm:ListCertificates",
                "acm:DescribeCertificate",
                "iam:ListServerCertificates",
                "iam:GetServerCertificate",
                "wafv2:GetWebACL",
                "wafv2:GetWebACLForResource",
                "wafv2:AssociateWebACL",
                "wafv2:DisassociateWebACL",
                "waf-regional:GetWebACL",
                "waf-regional:GetWebACLForResource",
                "waf-regional:AssociateWebACL",
                "waf-regional:DisassociateWebACL",
                "shield:GetSubscriptionState",
                "shield:DescribeProtection",
                "shield:CreateProtection",
                "shield:DeleteProtection"
            ],
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": [
                "ec2:AuthorizeSecurityGroupIngress",
                "ec2:RevokeSecurityGroupIngress",
                "ec2:CreateSecurityGroup",
                "ec2:CreateTags",
                "ec2:DeleteTags"
            ],
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": [
                "elasticloadbalancing:CreateLoadBalancer",
                "elasticloadbalancing:CreateTargetGroup",
                "elasticloadbalancing:CreateListener",
                "elasticloadbalancing:DeleteListener",
                "elasticloadbalancing:CreateRule",
                "elasticloadbalancing:DeleteRule",
                "elasticloadbalancing:AddTags",
                "elasticloadbalancing:RemoveTags"
            ],
            "Resource": "*"
        },
        {
            "Effect": "Allow",
            "Action": [
                "elasticloadbalancing:ModifyLoadBalancerAttributes",
                "elasticloadbalancing:ModifyTargetGroupAttributes",
                "elasticloadbalancing:SetIpAddressType",
                "elasticloadbalancing:SetSecurityGroups",
                "elasticloadbalancing:SetSubnets",
                "elasticloadbalancing:DeleteLoadBalancer",
                "elasticloadbalancing:DeleteTargetGroup",
                "elasticloadbalancing:RegisterTargets",
                "elasticloadbalancing:DeregisterTargets"
            ],
            "Resource": "*"
        }
    ]
}
EOF

aws iam create-policy-version     --policy-arn arn:aws:iam::459119164101:policy/AWSLoadBalancerControllerIAMPolicy     --policy-document file://iam_policy.json     --set-as-default
kubectl rollout restart deployment aws-load-balancer-controller -n kube-system
kubectl get ingress sample-nginx-ingress -n kube-system
kubectl get ingress sample-nginx-ingress -n kube-system -w
kubectl get ingress sample-nginx-ingress -n kube-system
curl -I k8s-kubesyst-sampleng-1d7b00d3ef-695245843.us-east-1.elb.amazonaws.com
rm iam_policy.json
flux reconcile source git flux-system
kubectl get nodes
kubectl delete -f app.yaml
ls
cd infra-live/
ls
git clone https://github.com/gauravjamadar-devops/Ai-Poc.git
git clone -b main https://github.com/gauravjamadar-devops/Ai-Poc.git
git clone -b origin main https://github.com/gauravjamadar-devops/Ai-Poc.git
sudo dnf install git -y || sudo yum install git -y
git clone https://github.com/gauravjamadar-devops/Ai-Poc.git
ls
# Move back to your home directory
cd /home/ec2-user
# Clone your existing repository
git clone https://github.com/gauravjamadar-devops/Ai-Poc.git
# Move into the cloned repository folder
cd Ai-Poc
ls
git checkout main
git pull origin main
# Copy the folder here
cp -r /home/ec2-user/infra-live .
# Create a .gitignore so you don't push bulky cache files
echo ".terragrunt-cache/" >> .gitignore
echo ".terraform/" >> .gitignore
# Stage and commit the files
git add infra-live/ .gitignore
git commit -m "feat: add terragrunt infra-live config"
# Push to GitHub
git push origin main
ls
cd ..
ls
cd ..
ls
cd -
ls
# 1. Print the entire file layout structure 
find . -name "*.hcl" -o -name "*.tf"
# 2. Check for the missing root configuration file
ls -la terragrunt.hcl
cat << 'EOF' > ~/infra-live/terragrunt.hcl
remote_state {
  backend = "s3"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
  config = {
    bucket         = "your-unique-free-tier-tfstate-bucket" # ⚠️ Replace with any unique bucket name you choose
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}

generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
provider "aws" {
  region = "us-east-1"
}
EOF

}
EOF
cat << 'EOF' > ~/infra-live/terragrunt.hcl
remote_state {
  backend = "s3"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
  config = {
    bucket         = "your-unique-free-tier-tfstate-bucket"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
  }
}

generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = "provider \"aws\" {\n  region = \"us-east-1\"\n}\n"
}
EOF

cat ~/infra-live/terragrunt.hcl
cat << 'EOF' > ~/infra-live/start-day.sh
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
EOF

chmod +x ~/infra-live/start-day.sh
cat << 'EOF' > ~/infra-live/end-day.sh
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
EOF

chmod +x ~/infra-live/end-day.sh
sed -i 's/your-unique-free-tier-tfstate-bucket/demo-eks-tfstate-459119164101/g' ~/infra-live/terragrunt.hcl
ls -F ~/infra-live/
pwd
ls
cd infra-live/
ls
git add terragrunt.hcl start-day.sh end-day.sh
ls
# Move back to your home directory
cd /home/ec2-user
# Clone your existing repository
git clone https://github.com/gauravjamadar-devops/Ai-Poc.git
# Move into the cloned repository folder
cd Ai-Poc
git checkout main
git pull origin main
# Copy the folder here
cp -r /home/ec2-user/infra-live .
# Create a .gitignore so you don't push bulky cache files
echo ".terragrunt-cache/" >> .gitignore
echo ".terraform/" >> .gitignore
# Stage and commit the files
git add infra-live/ .gitignore
git commit -m "feat: add terragrunt infra-live config"
# Push to GitHub
git push origin main
ls -F ~/infra-live/
cat ~/infra-live/terragrunt.hcl | grep bucket
cd ~/infra-live && terragrunt run-all plan
# 1. Check if your current CLI context is securely connected to the right cluster
kubectl config current-context
# 2. Verify all infrastructure EC2 worker nodes are online, healthy, and running as SPOT instances
kubectl get nodes -o wide
kubectl get nodes -l ://amazonaws.com
# 3. Check the core Kubernetes system components health status
kubectl get cs
# 1. Run a local diagnostic check on all Flux client/server components
flux check
# 2. Verify Flux is successfully pulling the latest code changes from your Git repo
flux get sources git
# 3. Check that Flux is successfully tracking and matching all of your Helm applications
flux get helmreleases -A
# 1. Confirm cert-manager application pods are completely active and running
kubectl get pods -n cert-manager
# 2. Confirm the AWS Load Balancer Controller pods are running with zero crash loops
kubectl get pods -n kube-system -l app.kubernetes.io/name=aws-load-balancer-controller
# 3. Confirm the controller webhook service has successfully acquired its target backend IP endpoints
kubectl get endpoints aws-load-balancer-webhook-service -n kube-system
# 1. Confirm your test application pods are online and ready to handle user requests
kubectl get deployment,svc -n kube-system -l app=sample-nginx
# 2. Check the Ingress mapping to verify that AWS has populated your live public DNS string
kubectl get ingress sample-nginx-ingress -n kube-system
# 3. Execute a HTTP head request to test live traffic routing into your EKS pods from the open internet
# (Replace the string below with the actual long address returned by your 'get ingress' command)
curl -I ://amazonaws.com
kubectl delete deployment -f sample-nginx-ingress
kubectl get deployment
kubectl get ns
kubectl get deployment -n kube-system
kubectl delete ingress sample-nginx-ingress -n kube-system
ls
kubectl get service demo-web-service
# Add the Crossplane Helm repository
helm repo add crossplane-stable https://crossplane.io
helm repo update
# Install Crossplane into its own namespace
helm install crossplane --namespace crossplane-system --create-namespace crossplane-stable/crossplane
helm --version
curl -fsSL -o get_helm.sh https://githubusercontent.com
chmod 700 get_helm.sh
./get_helm.sh
# 1. Download the safe official Linux AMD64 package
wget https://helm.sh
# 2. Unpack the compressed archive
tar -zxvf helm-v3.14.2-linux-amd64.tar.gz
# 3. Move the binary file to your system applications path
sudo mv linux-amd64/helm /usr/local/bin/helm
wget https://helm.sh
tar -zxvf helm-v3.14.2-linux-amd64.tar.gz
ls
# 1. Download the REAL application package file
wget https://helm.sh
# 2. Extract the actual application binary now that it exists
tar -zxvf helm-v3.14.2-linux-amd64.tar.gz
# 3. Relocate Helm into your main system application directories
sudo mv linux-amd64/helm /usr/local/bin/helm
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
helm version
# Add the correct Helm repository
helm repo add crossplane-stable https://crossplane.io
helm repo update
# Install Crossplane into its own namespace
helm install crossplane --namespace crossplane-system --create-namespace crossplane-stable/crossplane
helm repo add crossplane-stable https://crossplane.io
helm repo update
# 1. Add the precise charts path
helm repo add crossplane-stable https://crossplane.io
# 2. Update the cache index
helm repo update
# 3. Trigger the cluster installation
helm install crossplane --namespace crossplane-system --create-namespace crossplane-stable/crossplane
helm install crossplane https://crossplane.io --namespace crossplane-system --create-namespace
kubectl apply -f https://githubusercontent.com
helm repo add crossplane-stable https://charts.crossplane.io/stable
helm repo update
helm install crossplane --namespace crossplane-system --create-namespace crossplane-stable/crossplane
kubectl get pods -n crossplane-system
aws eks describe-cluster --name demo-eks --query "cluster.identity.oidc.issuer" --output text
cat <<EOF > trust.json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::YOUR_12_DIGIT_ACCOUNT_ID:oidc-provider/oidc.eks.us-east-1.amazonaws.com/id/88DD26E9FC7CAA25CD4941298AC5ED11"
      },
      "Action": "sts:AssumeRoleWithWebIdentity",
      "Condition": {
        "StringEquals": {
          "://amazonaws.com": "system:serviceaccount:crossplane-system:aws-provider-sa"
        }
      }
    }
  ]
}
EOF

aws iam create-role --role-name CrossplaneAWSControllerRole --assume-role-policy-document file://trust.json
aws iam attach-role-policy --role-name CrossplaneAWSControllerRole --policy-arn arn:aws:iam::aws:policy/AdministratorAccess
cat <<EOF > trust.json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::459119164101:oidc-provider/://amazonaws.com"
      },
      "Action": "sts:AssumeRoleWithWebIdentity",
      "Condition": {
        "StringEquals": {
          "://amazonaws.com:sub": "system:serviceaccount:crossplane-system:aws-provider-sa"
        }
      }
    }
  ]
}
EOF

aws iam create-role --role-name CrossplaneAWSControllerRole --assume-role-policy-document file://trust.json
aws iam attach-role-policy --role-name CrossplaneAWSControllerRole --policy-arn arn:aws:iam::aws:policy/AdministratorAccess
cat <<EOF > provider-aws.yaml
apiVersion: pkg.crossplane.io/v1
kind: Provider
metadata:
  name: provider-aws-s3
spec:
  package: xpkg.upbound.io/upbound/provider-aws-s3:v1.0.0
---
apiVersion: v1
kind: ServiceAccount
metadata:
  name: aws-provider-sa
  namespace: crossplane-system
  annotations:
    ://amazonaws.com: arn:aws:iam::459119164101:role/CrossplaneAWSControllerRole
---
apiVersion: aws.crossplane.io/v1beta1
kind: ProviderConfig
metadata:
  name: default
spec:
  credentials:
    source: WebIdentity
    webIdentity:
      roleARN: arn:aws:iam::459119164101:role/CrossplaneAWSControllerRole
EOF

kubectl apply -f provider-aws.yaml
kubectl get provider
cat <<EOF > provider-aws.yaml
apiVersion: pkg.crossplane.io/v1
kind: Provider
metadata:
  name: provider-aws-s3
spec:
  package: xpkg.upbound.io/upbound/provider-aws-s3:v1.3.0
---
apiVersion: v1
kind: ServiceAccount
metadata:
  name: aws-provider-sa
  namespace: crossplane-system
  annotations:
    ://amazonaws.com: arn:aws:iam::459119164101:role/CrossplaneAWSControllerRole
EOF

kubectl apply -f provider-aws.yaml
kubectl get provider -w
kubectl get provider 
kubectl get ns
kubectl get provider -n crossplane-system
kubectl get provider -w
rm -f provider-aws.yaml
cat <<EOF > provider-aws.yaml
apiVersion: pkg.crossplane.io/v1
kind: Provider
metadata:
  name: provider-aws-s3
spec:
  package: xpkg.upbound.io/upbound/provider-aws-s3:v1.3.0
---
apiVersion: v1
kind: ServiceAccount
metadata:
  name: aws-provider-sa
  namespace: crossplane-system
  annotations:
    ://amazonaws.com: arn:aws:iam::459119164101:role/CrossplaneAWSControllerRole
EOF

kubectl apply -f provider-aws.yaml
kubectl get providers
# 1. Write the base file with a safe placeholder word
cat <<EOF > provider-aws.yaml
apiVersion: pkg.crossplane.io/v1
kind: Provider
metadata:
  name: provider-aws-s3
spec:
  package: xpkg.upbound.io/upbound/provider-aws-s3:v1.3.0
---
apiVersion: v1
kind: ServiceAccount
metadata:
  name: aws-provider-sa
  namespace: crossplane-system
  annotations:
    PLACEHOLDER_KEY: arn:aws:iam::459119164101:role/CrossplaneAWSControllerRole
EOF

# 2. Swap the placeholder text with the exact AWS key string
sed -i 's/PLACEHOLDER_KEY/eks.amazonaws.com\/role-arn/g' provider-aws.yaml
cat provider-aws.yaml
kubectl apply -f provider-aws.yaml
kubectl get providers.pkg.crossplane.io
cat <<EOF > provider-config.yaml
apiVersion: aws.upbound.io/v1beta1
kind: ProviderConfig
metadata:
  name: default
spec:
  credentials:
    source: WebIdentity
    webIdentity:
      roleARN: arn:aws:iam::459119164101:role/CrossplaneAWSControllerRole
EOF

kubectl apply -f provider-config.yaml
kubectl get providerconfig
cat <<EOF > bucket.yaml
apiVersion: s3.aws.upbound.io/v1beta1
kind: Bucket
metadata:
  name: crossplane-poc-bucket-459119164101
spec:
  forProvider:
    region: us-east-1
  providerConfigRef:
    name: default
EOF

kubectl apply -f bucket.yaml
kubectl get buckets
kubectl get ns
kubectl get buckets
kubectl get buckets.s3.aws.upbound.io
kubectl get bucket
kubectl get bucket -- all-namespaces
kubectl get bucket --all-namespaces
cat <<EOF > provider-aws.yaml
apiVersion: pkg.crossplane.io/v1alpha1
kind: ControllerConfig
metadata:
  name: aws-s3-config
spec:
  serviceAccountName: aws-provider-sa
---
apiVersion: pkg.crossplane.io/v1
kind: Provider
metadata:
  name: provider-aws-s3
spec:
  package: xpkg.upbound.io/upbound/provider-aws-s3:v1.3.0
  runtimeConfigRef:
    name: aws-s3-config
---
apiVersion: v1
kind: ServiceAccount
metadata:
  name: aws-provider-sa
  namespace: crossplane-system
  annotations:
    ://amazonaws.com: arn:aws:iam::459119164101:role/CrossplaneAWSControllerRole
EOF

# Use our safe sed replacement from earlier to ensure the annotation key parses cleanly
sed -i 's/PLACEHOLDER_KEY/://amazonaws.com\/role-arn/g' provider-aws.yaml
kubectl apply -f provider-aws.yaml
kubectl get pods -n crossplane-system
kubectl get buckets.s3.aws.upbound.io
kubectl patch serviceaccount aws-provider-sa -n crossplane-system --type merge -p '{"metadata":{"annotations":{"eks.amazonaws.com/role-arn":"arn:aws:iam::459119164101:role/CrossplaneAWSControllerRole"}}}'
kubectl patch serviceaccount aws-provider-sa -n crossplane-system --type json -p='[{"op": "remove", "path": "/metadata/annotations/://amazonaws.com"}]'
kubectl get serviceaccount aws-provider-sa -n crossplane-system -o yaml
cat <<EOF > runtime-config.yaml
apiVersion: pkg.crossplane.io/v1beta1
kind: DeploymentRuntimeConfig
metadata:
  name: aws-s3-runtime-config
spec:
  serviceAccountTemplate:
    metadata:
      name: aws-provider-sa
---
apiVersion: pkg.crossplane.io/v1
kind: Provider
metadata:
  name: provider-aws-s3
spec:
  package: xpkg.upbound.io/upbound/provider-aws-s3:v1.3.0
  runtimeConfigRef:
    name: aws-s3-runtime-config
EOF

kubectl apply -f runtime-config.yaml
kubectl get buckets.s3.aws.upbound.io
 kubectl delete pod -n crossplane-system -l pkg.crossplane.io/provider=provider-aws-s3
kubectl get pods -n crossplane-system
kubectl get buckets.s3.aws.upbound.io
kubectl get pods -n crossplane-system
kubectl get buckets.s3.aws.upbound.io
kubectl describe bucket crossplane-poc-bucket-459119164101
cat <<EOF > runtime-config.yaml
apiVersion: pkg.crossplane.io/v1beta1
kind: DeploymentRuntimeConfig
metadata:
  name: aws-s3-runtime-config
spec:
  serviceAccountTemplate:
    metadata:
      name: aws-provider-sa
---
apiVersion: pkg.crossplane.io/v1
kind: Provider
metadata:
  name: provider-aws-s3
spec:
  package: xpkg.upbound.io/upbound/provider-aws-s3:v1.3.0
  runtimeConfigRef:
    name: aws-s3-runtime-config
---
apiVersion: pkg.crossplane.io/v1
kind: Provider
metadata:
  name: upbound-provider-family-aws
spec:
  package: xpkg.upbound.io/upbound/provider-family-aws:v1.3.0
  runtimeConfigRef:
    name: aws-s3-runtime-config
EOF

kubectl apply -f runtime-config.yaml
kubectl delete pods -n crossplane-system -l pkg.crossplane.io/provider
kubectl get buckets.s3.aws.upbound.io
kubectl get pods -n crossplane-system -l pkg.crossplane.io/provider
kubectl get buckets.s3.aws.upbound.io
kubectl describe bucket.s3.aws.upbound.io crossplane-poc-bucket-459119164101
cat <<EOF > trust.json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::459119164101:oidc-provider/://amazonaws.com"
      },
      "Action": "sts:AssumeRoleWithWebIdentity",
      "Condition": {
        "StringLike": {
          "://amazonaws.com:sub": "system:serviceaccount:crossplane-system:*"
        }
      }
    }
  ]
}
EOF

aws iam update-assume-role-policy --role-name CrossplaneAWSControllerRole --policy-document file://trust.json
kubectl delete pods -n crossplane-system -l pkg.crossplane.io/provider
kubectl get buckets.s3.aws.upbound.io
kubectl get pods -n crossplane-system -l pkg.crossplane.io/provider
kubectl get buckets.s3.aws.upbound.io
# 1. Create the base file with a safe string placeholder
cat <<EOF > trust.json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::459119164101:oidc-provider/OIDC_BASE_URL/id/OIDC_HASH_ID"
      },
      "Action": "sts:AssumeRoleWithWebIdentity",
      "Condition": {
        "StringLike": {
          "OIDC_BASE_URL/id/OIDC_HASH_ID:sub": "system:serviceaccount:crossplane-system:*"
        }
      }
    }
  ]
}
EOF

# 2. Automatically swap out the base URL placeholder
sed -i 's/OIDC_BASE_URL/://amazonaws.com' trust.json
# 3. Automatically swap out your cluster's unique hash ID placeholder
sed -i 's/OIDC_HASH_ID/88DD26E9FC7CAA25CD4941298AC5ED11/g' trust.json
cat trust.json
# Update the policy in AWS
aws iam update-assume-role-policy --role-name CrossplaneAWSControllerRole --policy-document file://trust.json
# Kick the crossplane pods to clear the error cache
kubectl delete pods -n crossplane-system -l pkg.crossplane.io/provider
kubectl get pods -n crossplane-system -l pkg.crossplane.io/provider
kubectl get buckets.s3.aws.upbound.io
# 1. Re-write the base template
cat <<EOF > trust.json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::459119164101:oidc-provider/://amazonaws.com"
      },
      "Action": "sts:AssumeRoleWithWebIdentity",
      "Condition": {
        "StringLike": {
          "://amazonaws.com:sub": "system:serviceaccount:crossplane-system:*"
        }
      }
    }
  ]
}
EOF

# 1. Re-write the base template
cat <<EOF > trust.json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::459119164101:oidc-provider/://amazonaws.com"
      },
      "Action": "sts:AssumeRoleWithWebIdentity",
      "Condition": {
        "StringLike": {
          "://amazonaws.com:sub": "system:serviceaccount:crossplane-system:*"
        }
      }
    }
  ]
}
EOF

aws iam update-assume-role-policy --role-name CrossplaneAWSControllerRole --policy-document file://trust.json
kubectl delete pods -n crossplane-system -l pkg.crossplane.io/provider
kubectl get pods -n crossplane-system -l pkg.crossplane.io/provider
kubectl get buckets.s3.aws.upbound.io
# 1. Define the separate parts safely
export OIDC_HOST="oidc.eks.us-east-1.amazonaws.com"
export OIDC_ID="88DD26E9FC7CAA25CD4941298AC5ED11"
# 2. Write the JSON file using those secure variables
cat <<EOF > trust.json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::459119164101:oidc-provider/${OIDC_HOST}/id/${OIDC_ID}"
      },
      "Action": "sts:AssumeRoleWithWebIdentity",
      "Condition": {
        "StringLike": {
          "${OIDC_HOST}/id/${OIDC_ID}:sub": "system:serviceaccount:crossplane-system:*"
        }
      }
    }
  ]
}
EOF

cat trust.json
aws iam update-assume-role-policy --role-name CrossplaneAWSControllerRole --policy-document file://trust.json
kubectl delete pods -n crossplane-system -l pkg.crossplane.io/provider
kubectl get buckets.s3.aws.upbound.io
kubectl describe bucket.s3.aws.upbound.io crossplane-poc-bucket-459119164101
git pull main https://github.com/gauravjamadar-devops/Ai-Poc.git
git pull https://github.com/gauravjamadar-devops/Ai-Poc.git
git clone https://github.com/gauravjamadar-devops/Ai-Poc.git
pwd
git clone https://github.com/gauravjamadar-devops/Ai-Poc.git
git pull origin main
ls
rm -rf Ai-Poc/
git clone https://github.com/gauravjamadar-devops/Ai-Poc.git
git checkout main
git pull origin main
git version
cd Ai-Poc/
git pull origin main
ls
cd ..
cd -
cp -r /home/ec2-user/bucket.yaml clusters/my-eks-cluster/apps/crossplane-s3-bucket.yaml
vi 
vi clusters/my-eks-cluster/apps/crossplane-s3-bucket.yaml
cd ..
vi bi
vi bucket.yaml 
cd clusters/my-eks-cluster/apps/
cd Ai-Poc/
cd clusters/my-eks-cluster/apps/
ls
vi kustomization.yaml 
pwd
cd ../../..
ls
cd infra-live/
ls
cd Ai-Poc/
ls
cd ..
ls
cd ..
ls
pwd
git add clusters/my-eks-cluster/apps/crossplane-s3-bucket.yaml clusters/my-eks-cluster/apps/kustomization.yaml
git commit -m "feat: integrate crossplane s3 bucket manifest into fluxcd track"
git push origin main
ls
cd clusters/
ls
cd my-eks-cluster/apps/
ls
cd ../../..
cd infra-live/
ls
vi start-day.sh 
vi end-day.sh 
git add start-day.sh end-day.sh 
git push origin main
git commit -b "start&end script modified"
git commit -m "start&end script modified"
git push origin main
cd ..
ls
cd ..
ls
tree -F -I ".git|.terraform|.terragrunt-cache" ~/infra-live/
cd  Ai-Poc/
tree -F -I ".git|.terraform|.terragrunt-cache" ~/infra-live/
cd infra-live/
tree -F -I ".git|.terraform|.terragrunt-cache" ~/infra-live/
find ~/infra-live/ -maxdepth 2 -not -path '*/.*' | sort | sed 's;[^/]*/;|____;g;s;____|; |;g'
find . -name "*.hcl" -o -name "*.tf"
# 1. Check the true location of your active Git tracking repository
cd ~/infra-live && git remote -v
# 2. List the full details of files inside the nested Ai-Poc directory
ls -la ~/infra-live/Ai-Poc/
# 3. Check what clusters or manifest paths exist there
find ~/infra-live/Ai-Poc/ -maxdepth 3 -not -path '*/.*'
ls
cd Ai-Poc/
ls
cd clusters/my-eks-cluster/
ls
cd apps/
ls
ls -lrt
ci kustomization.yaml 
vi kustomization.yaml 
cat kustomization.yaml 
ls
cp ~/bucket.yaml ./crossplane-s3-bucket.yaml
cat << 'EOF' >> kustomization.yaml
  - crossplane-s3-bucket.yaml
EOF

cat kustomization.yaml
# 1. Move back up to your Git repository root folder
cd ~/infra-live/Ai-Poc
# 2. Stage the new files and kustomization updates
git add clusters/my-eks-cluster/apps/crossplane-s3-bucket.yaml clusters/my-eks-cluster/apps/kustomization.yaml
# 3. Save the commit state
git commit -m "feat: track crossplane s3 bucket manifest in the active flux loop"
# 4. Push it live to GitHub
git push origin main
git pull origin main
# 1. Tell Git to use a standard merge strategy for divergent history
git config pull.rebase false
# 2. Pull down the remote changes explicitly allowing unrelated histories if needed
git pull origin main --no-edit
git push origin main
git status
ls
ls -lrt
pwd
find ~/infra-live/ -maxdepth 2 -not -path '*/.*' | sort | sed 's;[^/]*/;|____;g;s;____|; |;g'
pwd
ls -la ~
find ~ -type d -name "Ai-Poc"
cat /home/ec2-user/infra-live/Ai-Poc/clusters/my-eks-cluster/apps/kustomization.yaml | grep crossplane
cat /home/ec2-user/Ai-Poc/clusters/my-eks-cluster/apps/kustomization.yaml | grep crossplane
# 1. Remove the old duplicate repository sitting directly in your home root
rm -rf /home/ec2-user/Ai-Poc
# 2. Remove the recursive infinite loop sitting inside your active Git folder
rm -rf /home/ec2-user/infra-live/Ai-Poc/infra-live
find ~/infra-live/ -maxdepth 2 -not -path '*/.*' | sort | sed 's;[^/]*/;|____;g;s;____|; |;g'
cd /home/ec2-user/infra-live/Ai-Poc
# Resolve the previous merge block
git config pull.rebase false
git pull origin main --no-edit
# Push your verified changes up to GitHub
git push origin main
cd ../..
ls
pwd
cd infra-live/
ls
 cd Ai-Poc/
ls
cd clusters/my-eks-cluster/
ls
cd apps/
ls
ls -lrt
