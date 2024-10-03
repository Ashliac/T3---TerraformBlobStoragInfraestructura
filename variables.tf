variable "subscription_id" {
  description = "ID de la suscripción de Azure"
  type        = string
}

variable "resource_group_name" {
  default = "blob-rg-ash"
}

variable "storage_account_name" {
  default = "blobsaash"
}

variable "container_name" {
  default = "blob-ash"
}

variable "replication_type" {
  default = "LRS"
}