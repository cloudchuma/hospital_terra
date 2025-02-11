resource "helm_release" "nginx_ingress" {
  name       = "nginx-ingress"
  repository = "https://kubernetes.github.io/ingress-nginx"
  chart      = "ingress-nginx"
  namespace  = "kube-system"

  set {
    name  = "controller.service.type"
    value = "LoadBalancer"
  }

  set {
    name  = "controller.service.externalTrafficPolicy"
    value = "Cluster"
  }

  set {
    name  = "controller.admissionWebhooks.enabled"
    value = "false"
  }

  depends_on = [aws_eks_cluster.this]
}
