resource "kubernetes_service_account" "servciceaccount" {
  metadata {
    name      = "api-gateway-controller"
    namespace = "kube-system"
    annotations = {
      "eks.amazonaws.com/role-arn" = aws_iam_role.role.arn
    }
  }
}
