module "this" {
  source       = "github.com/jjno91/terraform-kubernetes-eks-workers?ref=master"
  iam_role_arn = "ARN of your EKS worker IAM role"
}
