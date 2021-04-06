## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.21 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.10 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.10 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_alb"></a> [alb](#module\_alb) | terraform-aws-modules/alb/aws | 5.12.0 |
| <a name="module_alb_sg"></a> [alb\_sg](#module\_alb\_sg) | terraform-aws-modules/security-group/aws | 3.18.0 |
| <a name="module_bastion"></a> [bastion](#module\_bastion) | terraform-aws-modules/ec2-instance/aws | 2.17.0 |
| <a name="module_bastion_sg"></a> [bastion\_sg](#module\_bastion\_sg) | terraform-aws-modules/security-group/aws | 3.18.0 |
| <a name="module_custom_sg"></a> [custom\_sg](#module\_custom\_sg) | terraform-aws-modules/security-group/aws | 3.18.0 |
| <a name="module_db_sg"></a> [db\_sg](#module\_db\_sg) | terraform-aws-modules/security-group/aws | 3.18.0 |
| <a name="module_rds"></a> [rds](#module\_rds) | terraform-aws-modules/rds/aws | 2.34.0 |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | terraform-aws-modules/vpc/aws | 2.77.0 |
| <a name="module_was"></a> [was](#module\_was) | terraform-aws-modules/ec2-instance/aws | 2.17.0 |
| <a name="module_was_sg"></a> [was\_sg](#module\_was\_sg) | terraform-aws-modules/security-group/aws | 3.18.0 |

## Resources

| Name | Type |
|------|------|
| [aws_alb_target_group_attachment.was](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/alb_target_group_attachment) | resource |
| [aws_eip.bastion](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_ami.amazon_linux](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_alb_egress_rules"></a> [alb\_egress\_rules](#input\_alb\_egress\_rules) | ALB SG | `any` | n/a | yes |
| <a name="input_alb_ingress_cidr_blocks"></a> [alb\_ingress\_cidr\_blocks](#input\_alb\_ingress\_cidr\_blocks) | n/a | `any` | n/a | yes |
| <a name="input_alb_ingress_rules"></a> [alb\_ingress\_rules](#input\_alb\_ingress\_rules) | n/a | `any` | n/a | yes |
| <a name="input_azs"></a> [azs](#input\_azs) | n/a | `any` | n/a | yes |
| <a name="input_bastion_associate_public_ip_address"></a> [bastion\_associate\_public\_ip\_address](#input\_bastion\_associate\_public\_ip\_address) | n/a | `any` | n/a | yes |
| <a name="input_bastion_cpu_credits"></a> [bastion\_cpu\_credits](#input\_bastion\_cpu\_credits) | n/a | `any` | n/a | yes |
| <a name="input_bastion_egress_rules"></a> [bastion\_egress\_rules](#input\_bastion\_egress\_rules) | Bastion SG | `any` | n/a | yes |
| <a name="input_bastion_ingress_cidr_blocks"></a> [bastion\_ingress\_cidr\_blocks](#input\_bastion\_ingress\_cidr\_blocks) | n/a | `any` | n/a | yes |
| <a name="input_bastion_ingress_rules"></a> [bastion\_ingress\_rules](#input\_bastion\_ingress\_rules) | n/a | `any` | n/a | yes |
| <a name="input_bastion_instance_type"></a> [bastion\_instance\_type](#input\_bastion\_instance\_type) | # Bastion | `any` | n/a | yes |
| <a name="input_bastion_key_name"></a> [bastion\_key\_name](#input\_bastion\_key\_name) | n/a | `any` | n/a | yes |
| <a name="input_bastion_monitoring"></a> [bastion\_monitoring](#input\_bastion\_monitoring) | n/a | `any` | n/a | yes |
| <a name="input_bastion_termination_protection"></a> [bastion\_termination\_protection](#input\_bastion\_termination\_protection) | n/a | `any` | n/a | yes |
| <a name="input_bastion_volume_size"></a> [bastion\_volume\_size](#input\_bastion\_volume\_size) | n/a | `any` | n/a | yes |
| <a name="input_cidr"></a> [cidr](#input\_cidr) | n/a | `any` | n/a | yes |
| <a name="input_create_database_internet_gateway_route"></a> [create\_database\_internet\_gateway\_route](#input\_create\_database\_internet\_gateway\_route) | n/a | `any` | n/a | yes |
| <a name="input_create_database_nat_gateway_route"></a> [create\_database\_nat\_gateway\_route](#input\_create\_database\_nat\_gateway\_route) | n/a | `any` | n/a | yes |
| <a name="input_create_database_subnet_group"></a> [create\_database\_subnet\_group](#input\_create\_database\_subnet\_group) | n/a | `any` | n/a | yes |
| <a name="input_create_database_subnet_route_table"></a> [create\_database\_subnet\_route\_table](#input\_create\_database\_subnet\_route\_table) | n/a | `any` | n/a | yes |
| <a name="input_database_subnet_tags"></a> [database\_subnet\_tags](#input\_database\_subnet\_tags) | n/a | `any` | n/a | yes |
| <a name="input_database_subnets"></a> [database\_subnets](#input\_database\_subnets) | n/a | `any` | n/a | yes |
| <a name="input_db_egress_rules"></a> [db\_egress\_rules](#input\_db\_egress\_rules) | DB SG | `any` | n/a | yes |
| <a name="input_db_ingress_cidr_blocks"></a> [db\_ingress\_cidr\_blocks](#input\_db\_ingress\_cidr\_blocks) | n/a | `any` | n/a | yes |
| <a name="input_db_ingress_rules"></a> [db\_ingress\_rules](#input\_db\_ingress\_rules) | n/a | `any` | n/a | yes |
| <a name="input_enable_nat_gateway"></a> [enable\_nat\_gateway](#input\_enable\_nat\_gateway) | n/a | `any` | n/a | yes |
| <a name="input_http_tcp_listeners"></a> [http\_tcp\_listeners](#input\_http\_tcp\_listeners) | n/a | `any` | n/a | yes |
| <a name="input_https_listeners"></a> [https\_listeners](#input\_https\_listeners) | n/a | `any` | n/a | yes |
| <a name="input_load_balancer_type"></a> [load\_balancer\_type](#input\_load\_balancer\_type) | n/a | `any` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | n/a | `any` | n/a | yes |
| <a name="input_one_nat_gateway_per_az"></a> [one\_nat\_gateway\_per\_az](#input\_one\_nat\_gateway\_per\_az) | n/a | `any` | n/a | yes |
| <a name="input_private_subnet_tags"></a> [private\_subnet\_tags](#input\_private\_subnet\_tags) | n/a | `any` | n/a | yes |
| <a name="input_private_subnets"></a> [private\_subnets](#input\_private\_subnets) | n/a | `any` | n/a | yes |
| <a name="input_public_subnet_tags"></a> [public\_subnet\_tags](#input\_public\_subnet\_tags) | n/a | `any` | n/a | yes |
| <a name="input_public_subnets"></a> [public\_subnets](#input\_public\_subnets) | n/a | `any` | n/a | yes |
| <a name="input_rds_allocated_storage"></a> [rds\_allocated\_storage](#input\_rds\_allocated\_storage) | n/a | `any` | n/a | yes |
| <a name="input_rds_backup_retention_period"></a> [rds\_backup\_retention\_period](#input\_rds\_backup\_retention\_period) | n/a | `any` | n/a | yes |
| <a name="input_rds_backup_window"></a> [rds\_backup\_window](#input\_rds\_backup\_window) | n/a | `any` | n/a | yes |
| <a name="input_rds_db_name"></a> [rds\_db\_name](#input\_rds\_db\_name) | kms\_key\_id        = "arm:aws:kms:<region>:<account id>:key/<kms key id>" | `any` | n/a | yes |
| <a name="input_rds_deletion_protection"></a> [rds\_deletion\_protection](#input\_rds\_deletion\_protection) | n/a | `any` | n/a | yes |
| <a name="input_rds_enabled_cloudwatch_logs_exports"></a> [rds\_enabled\_cloudwatch\_logs\_exports](#input\_rds\_enabled\_cloudwatch\_logs\_exports) | n/a | `any` | n/a | yes |
| <a name="input_rds_engine"></a> [rds\_engine](#input\_rds\_engine) | n/a | `any` | n/a | yes |
| <a name="input_rds_engine_version"></a> [rds\_engine\_version](#input\_rds\_engine\_version) | n/a | `any` | n/a | yes |
| <a name="input_rds_instance_class"></a> [rds\_instance\_class](#input\_rds\_instance\_class) | n/a | `any` | n/a | yes |
| <a name="input_rds_maintenance_window"></a> [rds\_maintenance\_window](#input\_rds\_maintenance\_window) | n/a | `any` | n/a | yes |
| <a name="input_rds_multi_az"></a> [rds\_multi\_az](#input\_rds\_multi\_az) | n/a | `any` | n/a | yes |
| <a name="input_rds_option_major_engine_version"></a> [rds\_option\_major\_engine\_version](#input\_rds\_option\_major\_engine\_version) | n/a | `any` | n/a | yes |
| <a name="input_rds_options"></a> [rds\_options](#input\_rds\_options) | n/a | `any` | n/a | yes |
| <a name="input_rds_param_family"></a> [rds\_param\_family](#input\_rds\_param\_family) | n/a | `any` | n/a | yes |
| <a name="input_rds_parameters"></a> [rds\_parameters](#input\_rds\_parameters) | n/a | `any` | n/a | yes |
| <a name="input_rds_password"></a> [rds\_password](#input\_rds\_password) | n/a | `any` | n/a | yes |
| <a name="input_rds_port"></a> [rds\_port](#input\_rds\_port) | n/a | `any` | n/a | yes |
| <a name="input_rds_storage_encrypted"></a> [rds\_storage\_encrypted](#input\_rds\_storage\_encrypted) | n/a | `any` | n/a | yes |
| <a name="input_rds_username"></a> [rds\_username](#input\_rds\_username) | n/a | `any` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | n/a | `any` | n/a | yes |
| <a name="input_single_nat_gateway"></a> [single\_nat\_gateway](#input\_single\_nat\_gateway) | n/a | `any` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `any` | n/a | yes |
| <a name="input_target_groups"></a> [target\_groups](#input\_target\_groups) | n/a | `any` | n/a | yes |
| <a name="input_was_associate_public_ip_address"></a> [was\_associate\_public\_ip\_address](#input\_was\_associate\_public\_ip\_address) | n/a | `any` | n/a | yes |
| <a name="input_was_cpu_credits"></a> [was\_cpu\_credits](#input\_was\_cpu\_credits) | n/a | `any` | n/a | yes |
| <a name="input_was_instance_type"></a> [was\_instance\_type](#input\_was\_instance\_type) | # WAS | `any` | n/a | yes |
| <a name="input_was_key_name"></a> [was\_key\_name](#input\_was\_key\_name) | n/a | `any` | n/a | yes |
| <a name="input_was_monitoring"></a> [was\_monitoring](#input\_was\_monitoring) | n/a | `any` | n/a | yes |
| <a name="input_was_termination_protection"></a> [was\_termination\_protection](#input\_was\_termination\_protection) | n/a | `any` | n/a | yes |
| <a name="input_was_volume_size"></a> [was\_volume\_size](#input\_was\_volume\_size) | n/a | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_alb_arn"></a> [alb\_arn](#output\_alb\_arn) | n/a |
| <a name="output_alb_dns_name"></a> [alb\_dns\_name](#output\_alb\_dns\_name) | n/a |
| <a name="output_alb_sg_id"></a> [alb\_sg\_id](#output\_alb\_sg\_id) | n/a |
| <a name="output_bastion_id"></a> [bastion\_id](#output\_bastion\_id) | n/a |
| <a name="output_bastion_public_ip"></a> [bastion\_public\_ip](#output\_bastion\_public\_ip) | n/a |
| <a name="output_bastion_sg_id"></a> [bastion\_sg\_id](#output\_bastion\_sg\_id) | n/a |
| <a name="output_custom_sg_id"></a> [custom\_sg\_id](#output\_custom\_sg\_id) | n/a |
| <a name="output_database_subnet_group"></a> [database\_subnet\_group](#output\_database\_subnet\_group) | n/a |
| <a name="output_database_subnets"></a> [database\_subnets](#output\_database\_subnets) | n/a |
| <a name="output_database_subnets_cidr_blocks"></a> [database\_subnets\_cidr\_blocks](#output\_database\_subnets\_cidr\_blocks) | n/a |
| <a name="output_db_instance_endpoint"></a> [db\_instance\_endpoint](#output\_db\_instance\_endpoint) | n/a |
| <a name="output_db_sg_id"></a> [db\_sg\_id](#output\_db\_sg\_id) | n/a |
| <a name="output_private_subnets"></a> [private\_subnets](#output\_private\_subnets) | n/a |
| <a name="output_private_subnets_cidr_blocks"></a> [private\_subnets\_cidr\_blocks](#output\_private\_subnets\_cidr\_blocks) | n/a |
| <a name="output_public_subnets"></a> [public\_subnets](#output\_public\_subnets) | n/a |
| <a name="output_public_subnets_cidr_blocks"></a> [public\_subnets\_cidr\_blocks](#output\_public\_subnets\_cidr\_blocks) | n/a |
| <a name="output_vpc_cidr_block"></a> [vpc\_cidr\_block](#output\_vpc\_cidr\_block) | n/a |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | n/a |
| <a name="output_was_ids"></a> [was\_ids](#output\_was\_ids) | n/a |
| <a name="output_was_private_ips"></a> [was\_private\_ips](#output\_was\_private\_ips) | n/a |
| <a name="output_web_sg_id"></a> [web\_sg\_id](#output\_web\_sg\_id) | n/a |