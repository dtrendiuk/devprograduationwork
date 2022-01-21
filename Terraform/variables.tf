# Input variable definitions

variable "key_name" {
  default = "ansible"
}

variable "env" {
  default = "dev-pro-test"
}

variable "region" {
  default = "eu-west-1"
}


# ALB variables
variable "alb_name" {
  default = "dev-pro-alb"
}

variable "tg_1_name" {
  default = "dev-pro-tg-webserver"
}

variable "tg_1_port" {
  default = "80"
}

variable "tg_1_protocol" {
  default = "HTTP"
}

variable "tg_2_name" {
  default = "dev-pro-tg-phpmyadmin"
}

variable "tg_2_port" {
  default = "80"
}

variable "tg_2_protocol" {
  default = "HTTP"
}

variable "aws_alb_listener_port" {
  default = "80"
}

variable "aws_alb_listener_protocol" {
  default = "HTTP"
}

# CLoudflare variables
variable "cloudflare_email" {
  default = "dmytro.trendiuk@dev.pro"
}

variable "domain" {
  default = "trendv2021.pp.ua"
}

variable "cloudflare_zone_id" {
  default = "34ecc35d44b40c021b5909560781d6a6"
}

# Green-Blue deployment variables
variable "enable_blue_deployment_cloudflare" {
  description = "If set to true, enable blue_deployment"
  type        = bool
  default     = false
}

variable "enable_green_deployment_cloudflare" {
  description = "If set to true, enable green_deployment"
  type        = bool
  default     = true
}
