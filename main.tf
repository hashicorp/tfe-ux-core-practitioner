variable "app_name" {
  default = "mary"
}

variable "provider_token" {

}

module "instance" {
  count  = 2
  token  = "${var.provider_token}"
  region = "nyc"
  image  = "ubuntu-14-04-x64"
  source = "./modules/instance"
  name   = "${var.app_name}"
}

output "instance_ids" {
  value = "${module.instance.ids}"
}