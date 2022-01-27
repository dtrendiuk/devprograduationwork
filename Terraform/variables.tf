# Input variable definitions

variable "key_name" {
  description = "SSH key name"
  default     = "ansible"
}

variable "env" {
  description = "Environment name"
  default     = "dev-pro-test"
}

variable "region" {
  description = "Region name"
  default     = "eu-west-1"
}

variable "deployment" {
  description = "Type of deployment"
  default     = "default"
}

# ALB variables
variable "alb_name" {
  description = "ALB name"
  default     = "dev-pro-alb"
}

variable "tg_1_name" {
  description = "First Target group name"
  default     = "dev-pro-tg-webserver"
}

variable "tg_1_port" {
  description = "First Target group port"
  default     = "80"
}

variable "tg_1_protocol" {
  description = "First Target group protocol"
  default     = "HTTP"
}

variable "tg_2_name" {
  description = "Second Target group name"
  default     = "dev-pro-tg-phpmyadmin"
}

variable "tg_2_port" {
  description = "Second Target group port"
  default     = "80"
}

variable "tg_2_protocol" {
  description = "Second Target group protocol"
  default     = "HTTP"
}

variable "aws_alb_listener_port" {
  description = "ALB listener port"
  default     = "80"
}

variable "aws_alb_listener_protocol" {
  description = "ALB listener protocol"
  default     = "HTTP"
}

# CLoudflare variables
variable "cloudflare_email" {
  description = "Contact email address"
  default     = "dmytro.trendiuk@dev.pro"
}

variable "domain" {
  description = "Domain name"
  default     = "trendv2021.pp.ua"
}

variable "cloudflare_zone_id" {
  description = "Cloudflare Zone ID"
  default     = "34ecc35d44b40c021b5909560781d6a6"
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
