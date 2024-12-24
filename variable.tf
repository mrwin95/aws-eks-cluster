variable "aws_subnets" {
  type    = list(string)
  default = ["subnet-c630699d", "subnet-c2986ee9"]
}

variable "eks_cluster_name" {
  type    = string
  default = "dev-eks-cluster"
}

variable "eks-cluster-role-name" {
  type    = string
  default = "eks-cluster-role"
}

variable "eks-node-group-role-name" {
  type    = string
  default = "eks-node-group-role"
}

variable "managed-nodes" {
  type    = string
  default = "managed-nodes"
}

variable "desired_size" {
  type    = number
  default = 0
}

variable "max_size" {
  type    = number
  default = 2
}

variable "min_size" {
  type    = number
  default = 0
}
