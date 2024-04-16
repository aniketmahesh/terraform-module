variable "base_name" {
  type    = string
  default = "null"
}

variable "virtual_network_name" {
  type    = string
  default = "null"
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type    = string
  default = "null"
}

variable "virtual_network_address_space" {
  type = list(string)
}
variable "subnet_name" {
  type = string
}
variable "subnet_address_prefixes" {
  type = list(string)
}

variable "subnet_id" {
  type = string
  default = "null"
}

variable "vm_size" {
  type = string
}
variable "admin_username" {
  type = string
}
variable "admin_password" {
  type = string
}

variable "image_publisher" {
  type = string
}

variable "image_offer" {
  type = string
}

variable "image_sku" {
  type = string
}

variable "image_version" {
  type = string
}