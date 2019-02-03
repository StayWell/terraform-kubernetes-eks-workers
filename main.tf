resource "kubernetes_config_map" "this" {
  metadata {
    name      = "aws-auth"
    namespace = "kube-system"
    labels    = "${var.labels}"
  }

  data {
    mapRoles = <<EOF
- rolearn: ${var.iam_role_arn}
  username: system:node:{{EC2PrivateDNSName}}
  groups:
    - system:bootstrappers
    - system:nodes
EOF
  }
}
