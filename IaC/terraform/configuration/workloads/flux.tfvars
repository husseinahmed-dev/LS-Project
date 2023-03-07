aks_cluster_key = "cluster_re1"

flux_settings = {
  aks_baseline = {
    namespace   = "flux-system"
    url         = "https://github.com/husseinahmed-dev/LS-Project.git"
    branch      = "main"
    target_path = "./IaC/terraform/cluster-baseline-settings/flux"
  }
}
