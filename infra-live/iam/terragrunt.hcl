
terraform {
    source = "../modules/iam"
  }

  inputs = {
      user_name   = "demo-user"
        policy_name = "demo-policy"
      }

