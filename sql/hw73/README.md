## NETOLOGY HOMEWORK 7.3

### Результат

 *Не очень хочется оставлять данные своей зарплатной карты на aws, тем более с указанием домашнего адреса, так что пытался реализовать ДЗ в Yandex Cloud. Надеюсь такой вариант тоже приемлем.*

Вывод команды terraform workspace list:  
![подпункт_1](https://raw.githubusercontent.com/Evgeniy-Nikolskiy/netology-homework/main/sql/hw73/assets/731.png)  



Вывод команды terraform plan:  
````
Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create
 <= read (data resources)

Terraform will perform the following actions:

  # module.news.data.yandex_compute_image.image will be read during apply
  # (config refers to values not yet known)
 <= data "yandex_compute_image" "image"  {
      + created_at    = (known after apply)
      + description   = (known after apply)
      + family        = "centos-8"
      + folder_id     = (known after apply)
      + id            = (known after apply)
      + image_id      = (known after apply)
      + labels        = (known after apply)
      + min_disk_size = (known after apply)
      + name          = (known after apply)
      + os_type       = (known after apply)
      + product_ids   = (known after apply)
      + size          = (known after apply)
      + status        = (known after apply)
    }

  # module.news.yandex_compute_instance.instance[0] will be created
  + resource "yandex_compute_instance" "instance" {
      + created_at                = (known after apply)
      + description               = "News App Demo"
      + folder_id                 = (known after apply)
      + fqdn                      = (known after apply)
      + hostname                  = "news-1"
      + id                        = (known after apply)
      + metadata                  = {
          + "ssh-keys" = <<-EOT
                centos:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDYkpLjvHd2E7y+T36tdg4THmL0UTn5qgIHHUuBlDGmfU1QaJfjcvhKdG7ObAtY+tTz0K8RAdhQ+Twd73+SdH2DvASNpggG0wxgtYs4uYJddO1xIYvGPOyQBK70mkRH+YPqEv/+kaBkItepDw0gKHSeDD5sURSb67dWOivY12c0XaK9dTc0oyY+1VPoKjAXaEPB62fZL4d6Prdty1Fw5Giw+LCmBhgKsCXii07u8dPEJ8o38QlsgUoLT4QDYWd+uwYNVnn960fcrRp3m3LhbUePEdMkRymjnTuOwHHkLCS6So6oxwAvBFdRv/3QlRqRASaYs63zIM6kpBsDs4A0T3rm+CjvG1udtWPgESOWzoxPiOBi0ZW3Wghoj6Ccb+poGkVhNqBThfvXZ1+Vx58+/4vtkOEbjGUUfQShQbrHmRZYXWTPM74bX10a07DwTllckBs7/5/NOdB0wLbP8zqnk2YSHD9hhQw6+0xfVwwZiDUNq7+Gq3zBdI4u2zc6+oD8vPE= evgen@evgen-VB
            EOT
        }
      + name                      = "news-1"
      + network_acceleration_type = "standard"
      + platform_id               = "standard-v2"
      + service_account_id        = (known after apply)
      + status                    = (known after apply)
      + zone                      = "ru-central1-a"

      + boot_disk {
          + auto_delete = true
          + device_name = (known after apply)
          + disk_id     = (known after apply)
          + mode        = (known after apply)

          + initialize_params {
              + description = (known after apply)
              + image_id    = (known after apply)
              + name        = (known after apply)
              + size        = 40
              + snapshot_id = (known after apply)
              + type        = "network-ssd"
            }
        }

      + network_interface {
          + index              = (known after apply)
          + ip_address         = (known after apply)
          + ipv4               = true
          + ipv6               = (known after apply)
          + ipv6_address       = (known after apply)
          + mac_address        = (known after apply)
          + nat                = true
          + nat_ip_address     = (known after apply)
          + nat_ip_version     = (known after apply)
          + security_group_ids = (known after apply)
          + subnet_id          = (known after apply)
        }

      + placement_policy {
          + placement_group_id = (known after apply)
        }

      + resources {
          + core_fraction = 100
          + cores         = 2
          + memory        = 2
        }

      + scheduling_policy {
          + preemptible = (known after apply)
        }
    }

  # module.news.yandex_compute_instance.instance[1] will be created
  + resource "yandex_compute_instance" "instance" {
      + created_at                = (known after apply)
      + description               = "News App Demo"
      + folder_id                 = (known after apply)
      + fqdn                      = (known after apply)
      + hostname                  = "news-2"
      + id                        = (known after apply)
      + metadata                  = {
          + "ssh-keys" = <<-EOT
                centos:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDYkpLjvHd2E7y+T36tdg4THmL0UTn5qgIHHUuBlDGmfU1QaJfjcvhKdG7ObAtY+tTz0K8RAdhQ+Twd73+SdH2DvASNpggG0wxgtYs4uYJddO1xIYvGPOyQBK70mkRH+YPqEv/+kaBkItepDw0gKHSeDD5sURSb67dWOivY12c0XaK9dTc0oyY+1VPoKjAXaEPB62fZL4d6Prdty1Fw5Giw+LCmBhgKsCXii07u8dPEJ8o38QlsgUoLT4QDYWd+uwYNVnn960fcrRp3m3LhbUePEdMkRymjnTuOwHHkLCS6So6oxwAvBFdRv/3QlRqRASaYs63zIM6kpBsDs4A0T3rm+CjvG1udtWPgESOWzoxPiOBi0ZW3Wghoj6Ccb+poGkVhNqBThfvXZ1+Vx58+/4vtkOEbjGUUfQShQbrHmRZYXWTPM74bX10a07DwTllckBs7/5/NOdB0wLbP8zqnk2YSHD9hhQw6+0xfVwwZiDUNq7+Gq3zBdI4u2zc6+oD8vPE= evgen@evgen-VB
            EOT
        }
      + name                      = "news-2"
      + network_acceleration_type = "standard"
      + platform_id               = "standard-v2"
      + service_account_id        = (known after apply)
      + status                    = (known after apply)
      + zone                      = "ru-central1-a"

      + boot_disk {
          + auto_delete = true
          + device_name = (known after apply)
          + disk_id     = (known after apply)
          + mode        = (known after apply)

          + initialize_params {
              + description = (known after apply)
              + image_id    = (known after apply)
              + name        = (known after apply)
              + size        = 40
              + snapshot_id = (known after apply)
              + type        = "network-ssd"
            }
        }

      + network_interface {
          + index              = (known after apply)
          + ip_address         = (known after apply)
          + ipv4               = true
          + ipv6               = (known after apply)
          + ipv6_address       = (known after apply)
          + mac_address        = (known after apply)
          + nat                = true
          + nat_ip_address     = (known after apply)
          + nat_ip_version     = (known after apply)
          + security_group_ids = (known after apply)
          + subnet_id          = (known after apply)
        }

      + placement_policy {
          + placement_group_id = (known after apply)
        }

      + resources {
          + core_fraction = 100
          + cores         = 2
          + memory        = 2
        }

      + scheduling_policy {
          + preemptible = (known after apply)
        }
    }

  # module.vpc.yandex_vpc_network.this will be created
  + resource "yandex_vpc_network" "this" {
      + created_at                = (known after apply)
      + default_security_group_id = (known after apply)
      + description               = "managed by terraform prod network"
      + folder_id                 = (known after apply)
      + id                        = (known after apply)
      + name                      = "prod"
      + subnet_ids                = (known after apply)
    }

  # module.vpc.yandex_vpc_subnet.this["ru-central1-a"] will be created
  + resource "yandex_vpc_subnet" "this" {
      + created_at     = (known after apply)
      + description    = "managed by terraform prod subnet for zone ru-central1-a"
      + folder_id      = (known after apply)
      + id             = (known after apply)
      + name           = "prod-ru-central1-a"
      + network_id     = (known after apply)
      + v4_cidr_blocks = [
          + "10.128.0.0/24",
        ]
      + v6_cidr_blocks = (known after apply)
      + zone           = "ru-central1-a"
    }

  # module.vpc.yandex_vpc_subnet.this["ru-central1-b"] will be created
  + resource "yandex_vpc_subnet" "this" {
      + created_at     = (known after apply)
      + description    = "managed by terraform prod subnet for zone ru-central1-b"
      + folder_id      = (known after apply)
      + id             = (known after apply)
      + name           = "prod-ru-central1-b"
      + network_id     = (known after apply)
      + v4_cidr_blocks = [
          + "10.129.0.0/24",
        ]
      + v6_cidr_blocks = (known after apply)
      + zone           = "ru-central1-b"
    }

  # module.vpc.yandex_vpc_subnet.this["ru-central1-c"] will be created
  + resource "yandex_vpc_subnet" "this" {
      + created_at     = (known after apply)
      + description    = "managed by terraform prod subnet for zone ru-central1-c"
      + folder_id      = (known after apply)
      + id             = (known after apply)
      + name           = "prod-ru-central1-c"
      + network_id     = (known after apply)
      + v4_cidr_blocks = [
          + "10.130.0.0/24",
        ]
      + v6_cidr_blocks = (known after apply)
      + zone           = "ru-central1-c"
    }

Plan: 6 to add, 0 to change, 0 to destroy.

──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply" now.
````