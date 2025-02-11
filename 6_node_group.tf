resource "azurerm_kubernetes_cluster_node_pool" "this" {
  name                  = "internal"
  kubernetes_cluster_id = azurerm_kubernetes_cluster.this.id
  vm_size               = "Standard_DS2_v2"
  vnet_subnet_id        = azurerm_subnet.subnet1.id
  node_count            = 2
  auto_scaling_enabled = true
  min_count           = 1
  max_count           = 10

#   node_labels = {
#     role                                    = "internal"
#     "kubernetes.azure.com/scalesetpriority" = "internal"
#   }

  tags = {
    Environment = "dev"
  }

  lifecycle {
    ignore_changes = [node_count]
  }
}