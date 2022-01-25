# Output variable definitions

output "alb_dns_name_green" {
  description = "ALB DNS"
  value       = aws_alb.dev_pro_alb_green.dns_name
}

output "alb_dns_name_blue" {
  description = "ALB DNS"
  value       = aws_alb.dev_pro_alb_blue.dns_name
}

output "sg_puplic_id" {
  description = "Public Security Group"
  value       = module.vpc.sg_public_id
}

output "sg_private_id" {
  description = "Private Security Group"
  value       = module.vpc.sg_private_id
}

output "sg_database_id" {
  description = "Database Security Group"
  value       = module.vpc.sg_database_id
}

output "vpc_id" {
  description = "VPC ID"
  value       = module.vpc.vpc_id
}

output "public_subnet_ids" {
  description = "Public Subnet IDs"
  value       = module.vpc.public_subnet_ids[*]
}

output "private_subnet_ids" {
  description = "Private Subnet IDs"
  value       = module.vpc.private_subnet_ids[*]
}

output "database_subnet_ids" {
  description = "Database Subnet IDs"
  value       = module.vpc.database_subnet_ids[*]
}

output "nat_gateway_ip" {
  description = "List of Elastic IPs created for AWS NAT Gateway"
  value       = module.vpc.nat_gateway_ip
}

output "webserver_green_private_ip" {
  description = "Green Webserver Private IP"
  value       = module.ec2-webserver-green.private_ip
}

output "phpmyadmin_greeen_private_ip" {
  description = "Green phpMyAdmin server Private IP"
  value       = module.ec2-phpmyadmin-green.private_ip
}

output "webserver_blue_private_ip" {
  description = "Blue Webserver Private IP"
  value       = module.ec2-webserver-blue.private_ip
}

output "phpmyadmin_blue_private_ip" {
  description = "Blue phpMyAdmin server Private IP"
  value       = module.ec2-phpmyadmin-blue.private_ip
}

output "database_private_ip" {
  description = "Database server Private IP"
  value       = module.ec2-database.private_ip
}

output "bastion_ip" {
  description = "Bastion Public IP"
  value       = module.ec2-bastion.public_ip
}

output "database_bucket_arn" {
  description = "Database Bucket ARN"
  value       = aws_s3_bucket.database_backup.arn
}

output "database_bucket_id" {
  description = "Database Bucket ID"
  value       = aws_s3_bucket.database_backup.id
}
