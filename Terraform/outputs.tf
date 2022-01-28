# Output variable definitions

output "alb_dns_name_green" {
  description = "ALB DNS Green"
  value       = aws_alb.dev_pro_alb_green.dns_name
}

output "alb_dns_name_blue" {
  description = "ALB DNS Blue"
  value       = aws_alb.dev_pro_alb_blue.dns_name
}

output "vpc_id" {
  description = "VPC ID"
  value       = module.vpc.vpc_id
}

output "nat_gateway_ip" {
  description = "List of Elastic IPs created for AWS NAT Gateway"
  value       = module.vpc.nat_gateway_ip
}

output "webserver_private_ip" {
  description = "Webserver Private IPs"
  value       = module.ec2-webserver[*].private_ip
}

output "phpmyadmin_private_ip" {
  description = "phpMyAdmin servers Private IPs"
  value       = module.ec2-phpmyadmin[*].private_ip
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
