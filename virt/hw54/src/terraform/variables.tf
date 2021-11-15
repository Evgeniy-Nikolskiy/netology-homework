variable "yandex_cloud_id" {
  default = "b1gm53rrhubfia3qpp2g"
}

variable "yandex_folder_id" {
  default = "b1gg49lefs6j79btf13t"
}

# Заменить на ID своего образа
# ID можно узнать с помощью команды yc compute image list
variable "centos-7-base" {
  default = "fd8ft6norj68lo29qlpi"
}
