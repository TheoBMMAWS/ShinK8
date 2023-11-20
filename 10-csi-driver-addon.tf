resource "aws_eks_addon" "csi_driver" {
  cluster_name             = aws_eks_cluster.istio.name
  addon_name               = "aws-ebs-csi-driver"
  addon_version            = "v1.16.0-eksbuild.1"
  service_account_role_arn = aws_iam_role.eks_ebs_csi_driver.arn
}

resource "null_resource" "update_kubeconfig"{
provisioner  "local-exec" {
  command = "aws eks --region eu-west-1 update-kubeconfig --name istio"

}

depends_on = [aws_eks_cluster.istio]

}