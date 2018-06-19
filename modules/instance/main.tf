variable "token" {

}

variable "image" {

}

variable "region" {

}

variable "name" {

}

variable "count" {
  default = 1
}


resource "random_id" "random" {
  count = "${var.count}"
  byte_length = 12
}

output "ids" {
  value = "${random_id.random.*.hex}"
}