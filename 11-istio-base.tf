resource "helm_release" "istio_base" {
  name = "my-istio-base-release"

  repository       = "https://istio-release.storage.googleapis.com/charts"
  chart            = "base"
  namespace        = "istio-system"
  create_namespace = true
  version          = "1.17.2"
  timeout          = 600


  set {
    name  = "global.istioNamespace"
    value = "istio-system"
  }


depends_on = [null_resource.update_kubeconfig]
}