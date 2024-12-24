resource "aws_eks_cluster" "eks" {
  name     = var.eks_cluster_name
  role_arn = aws_iam_role.eks_cluster.arn

  vpc_config {
    subnet_ids = var.aws_subnets
  }
}
