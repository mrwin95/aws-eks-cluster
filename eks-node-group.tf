resource "aws_eks_node_group" "example" {
  cluster_name    = aws_eks_cluster.eks.name
  node_group_name = var.managed-nodes
  node_role_arn   = aws_iam_role.eks_node_group.arn

  subnet_ids = var.aws_subnets
  scaling_config {
    desired_size = 1
    max_size     = 2
    min_size     = 1
  }
  instance_types = ["t2.micro"]

  depends_on = [
    aws_iam_role_policy_attachment.example-AmazonEKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.example-AmazonEKS_CNI_Policy,
    aws_iam_role_policy_attachment.example-AmazonEC2ContainerRegistryReadOnly,
    aws_eks_cluster.eks
  ]
}
