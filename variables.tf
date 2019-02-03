variable "iam_role_arn" {
  description = "(required) ARN of the EKS worker node IAM role"
  default     = ""
}

variable "labels" {
  description = "(optional) Additional labels applied to all resources"
  default     = {}
}
