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

variable "aws_lb_listener_port" {
  default = "80"
}

variable "aws_lb_listener_protocol" {
  default = "HTTP"
}

variable "cloudflare_email" {
  default = "dmytro.trendiuk@dev.pro"
}

variable "domain" {
  default = "trendv2021.pp.ua"
}

variable "cloudflare_zone_id" {
  default = "34ecc35d44b40c021b5909560781d6a6"
}

# RDS variables
variable "database_instance_type" {
  type        = string
  description = "instance size of the database"
  default     = "db.t2.micro"
}

variable "database_engine_type" {
  type        = string
  description = "RDS engine type of the database"
  default     = "mariadb"
}

variable "database_engine_version" {
  type        = string
  description = "RDS engine version of the database"
  default     = "10.5"
}

variable "database_storage_size" {
  type        = number
  description = "size in GB of the database"
  default     = 20
}

variable "database_skip_final_snapshot" {
  type        = bool
  description = "do not create a final database snapshot before deleting the database"
  default     = false
}

variable "database_backup_retention_period" {
  type        = string
  description = "number of days to retain backups for the database"
  default     = 7
}
