## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.72.0 |
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | 3.7.0 |
| <a name="provider_template"></a> [template](#provider\_template) | 2.2.0 |
| <a name="provider_tls"></a> [tls](#provider\_tls) | 3.1.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ec2-bastion"></a> [ec2-bastion](#module\_ec2-bastion) | .//modules/ec2 | n/a |
| <a name="module_ec2-database"></a> [ec2-database](#module\_ec2-database) | .//modules/ec2 | n/a |
| <a name="module_ec2-phpmyadmin-blue"></a> [ec2-phpmyadmin-blue](#module\_ec2-phpmyadmin-blue) | .//modules/ec2 | n/a |
| <a name="module_ec2-phpmyadmin-green"></a> [ec2-phpmyadmin-green](#module\_ec2-phpmyadmin-green) | .//modules/ec2 | n/a |
| <a name="module_ec2-webserver-blue"></a> [ec2-webserver-blue](#module\_ec2-webserver-blue) | .//modules/ec2 | n/a |
| <a name="module_ec2-webserver-green"></a> [ec2-webserver-green](#module\_ec2-webserver-green) | .//modules/ec2 | n/a |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | .//modules/vpc | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_alb.dev_pro_alb_blue](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/alb) | resource |
| [aws_alb.dev_pro_alb_green](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/alb) | resource |
| [aws_alb_listener.dev_pro_alb_listener_blue](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/alb_listener) | resource |
| [aws_alb_listener.dev_pro_alb_listener_green](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/alb_listener) | resource |
| [aws_alb_target_group.dev_pro_tg_blue_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/alb_target_group) | resource |
| [aws_alb_target_group.dev_pro_tg_blue_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/alb_target_group) | resource |
| [aws_alb_target_group.dev_pro_tg_green_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/alb_target_group) | resource |
| [aws_alb_target_group.dev_pro_tg_green_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/alb_target_group) | resource |
| [aws_alb_target_group_attachment.dev_pro_tg_blue_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/alb_target_group_attachment) | resource |
| [aws_alb_target_group_attachment.dev_pro_tg_blue_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/alb_target_group_attachment) | resource |
| [aws_alb_target_group_attachment.dev_pro_tg_green_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/alb_target_group_attachment) | resource |
| [aws_alb_target_group_attachment.dev_pro_tg_green_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/alb_target_group_attachment) | resource |
| [aws_iam_instance_profile.bastion_instance_profile](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile) | resource |
| [aws_iam_instance_profile.dev_pro_instance_profile](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile) | resource |
| [aws_iam_role.bastion_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role.dev_pro_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_key_pair.ansible_key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair) | resource |
| [aws_key_pair.dev_pro_key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair) | resource |
| [aws_lb_listener_rule.dev_pro_listener_rule](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener_rule) | resource |
| [aws_lb_listener_rule.dev_pro_listener_rule_blue](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener_rule) | resource |
| [aws_s3_bucket.database_backup](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [cloudflare_record.cname-blue](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/record) | resource |
| [cloudflare_record.cname-green](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/record) | resource |
| [tls_private_key.ansible](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key) | resource |
| [aws_iam_policy_document.ec2_instance_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |
| [template_file.user_data_bastion](https://registry.terraform.io/providers/hashicorp/template/latest/docs/data-sources/file) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alb_name"></a> [alb\_name](#input\_alb\_name) | ALB name | `string` | `"dev-pro-alb"` | no |
| <a name="input_aws_alb_listener_port"></a> [aws\_alb\_listener\_port](#input\_aws\_alb\_listener\_port) | ALB listener port | `string` | `"80"` | no |
| <a name="input_aws_alb_listener_protocol"></a> [aws\_alb\_listener\_protocol](#input\_aws\_alb\_listener\_protocol) | ALB listener protocol | `string` | `"HTTP"` | no |
| <a name="input_cloudflare_email"></a> [cloudflare\_email](#input\_cloudflare\_email) | Contact email address | `string` | `"dmytro.trendiuk@dev.pro"` | no |
| <a name="input_cloudflare_zone_id"></a> [cloudflare\_zone\_id](#input\_cloudflare\_zone\_id) | Cloudflare Zone ID | `string` | `"34ecc35d44b40c021b5909560781d6a6"` | no |
| <a name="input_domain"></a> [domain](#input\_domain) | Domain name | `string` | `"trendv2021.pp.ua"` | no |
| <a name="input_enable_blue_deployment_cloudflare"></a> [enable\_blue\_deployment\_cloudflare](#input\_enable\_blue\_deployment\_cloudflare) | If set to true, enable blue\_deployment | `bool` | `false` | no |
| <a name="input_enable_green_deployment_cloudflare"></a> [enable\_green\_deployment\_cloudflare](#input\_enable\_green\_deployment\_cloudflare) | If set to true, enable green\_deployment | `bool` | `true` | no |
| <a name="input_env"></a> [env](#input\_env) | Environment name | `string` | `"dev-pro-test"` | no |
| <a name="input_key_name"></a> [key\_name](#input\_key\_name) | SSH key name | `string` | `"ansible"` | no |
| <a name="input_region"></a> [region](#input\_region) | Region name | `string` | `"eu-west-1"` | no |
| <a name="input_tg_1_name"></a> [tg\_1\_name](#input\_tg\_1\_name) | First Target group name | `string` | `"dev-pro-tg-webserver"` | no |
| <a name="input_tg_1_port"></a> [tg\_1\_port](#input\_tg\_1\_port) | First Target group port | `string` | `"80"` | no |
| <a name="input_tg_1_protocol"></a> [tg\_1\_protocol](#input\_tg\_1\_protocol) | First Target group protocol | `string` | `"HTTP"` | no |
| <a name="input_tg_2_name"></a> [tg\_2\_name](#input\_tg\_2\_name) | Second Target group name | `string` | `"dev-pro-tg-phpmyadmin"` | no |
| <a name="input_tg_2_port"></a> [tg\_2\_port](#input\_tg\_2\_port) | Second Target group port | `string` | `"80"` | no |
| <a name="input_tg_2_protocol"></a> [tg\_2\_protocol](#input\_tg\_2\_protocol) | Second Target group protocol | `string` | `"HTTP"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_alb_dns_name_blue"></a> [alb\_dns\_name\_blue](#output\_alb\_dns\_name\_blue) | ALB DNS Blue |
| <a name="output_alb_dns_name_green"></a> [alb\_dns\_name\_green](#output\_alb\_dns\_name\_green) | ALB DNS Green |
| <a name="output_bastion_ip"></a> [bastion\_ip](#output\_bastion\_ip) | Bastion Public IP |
| <a name="output_database_bucket_arn"></a> [database\_bucket\_arn](#output\_database\_bucket\_arn) | Database Bucket ARN |
| <a name="output_database_bucket_id"></a> [database\_bucket\_id](#output\_database\_bucket\_id) | Database Bucket ID |
| <a name="output_database_private_ip"></a> [database\_private\_ip](#output\_database\_private\_ip) | Database server Private IP |
| <a name="output_database_subnet_ids"></a> [database\_subnet\_ids](#output\_database\_subnet\_ids) | Database Subnet IDs |
| <a name="output_nat_gateway_ip"></a> [nat\_gateway\_ip](#output\_nat\_gateway\_ip) | List of Elastic IPs created for AWS NAT Gateway |
| <a name="output_phpmyadmin_blue_private_ip"></a> [phpmyadmin\_blue\_private\_ip](#output\_phpmyadmin\_blue\_private\_ip) | Blue phpMyAdmin server Private IP |
| <a name="output_phpmyadmin_greeen_private_ip"></a> [phpmyadmin\_greeen\_private\_ip](#output\_phpmyadmin\_greeen\_private\_ip) | Green phpMyAdmin server Private IP |
| <a name="output_private_subnet_ids"></a> [private\_subnet\_ids](#output\_private\_subnet\_ids) | Private Subnet IDs |
| <a name="output_public_subnet_ids"></a> [public\_subnet\_ids](#output\_public\_subnet\_ids) | Public Subnet IDs |
| <a name="output_sg_database_id"></a> [sg\_database\_id](#output\_sg\_database\_id) | Database Security Group |
| <a name="output_sg_private_id"></a> [sg\_private\_id](#output\_sg\_private\_id) | Private Security Group |
| <a name="output_sg_puplic_id"></a> [sg\_puplic\_id](#output\_sg\_puplic\_id) | Public Security Group |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | VPC ID |
| <a name="output_webserver_blue_private_ip"></a> [webserver\_blue\_private\_ip](#output\_webserver\_blue\_private\_ip) | Blue Webserver Private IP |
| <a name="output_webserver_green_private_ip"></a> [webserver\_green\_private\_ip](#output\_webserver\_green\_private\_ip) | Green Webserver Private IP |
