resource "aws_eks_node_group" "this" {
  cluster_name    = aws_eks_cluster.this.name
  node_group_name = "internal"
  node_role_arn   = aws_iam_role.eks_node.arn
  subnet_ids      = [aws_subnet.subnet1.id, aws_subnet.subnet2.id]  # Replace with your subnets

  scaling_config {
    desired_size = 2
    min_size     = 1
    max_size     = 10
  }

  instance_types = ["t3.medium"]  # Equivalent of "Standard_DS2_v2"

  tags = {
    Environment = "dev"
  }

  lifecycle {
    ignore_changes = [scaling_config[0].desired_size]
  }
}
