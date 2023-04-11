<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.7 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 2.24 |
| <a name="requirement_volterra"></a> [volterra](#requirement\_volterra) | 0.11.16 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_http"></a> [http](#provider\_http) | n/a |
| <a name="provider_volterra"></a> [volterra](#provider\_volterra) | 0.11.16 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [volterra_aws_vpc_site.example](https://registry.terraform.io/providers/volterraedge/volterra/0.11.16/docs/resources/aws_vpc_site) | resource |
| [volterra_cloud_site_labels.labels](https://registry.terraform.io/providers/volterraedge/volterra/0.11.16/docs/resources/cloud_site_labels) | resource |
| [volterra_tf_params_action.aws_vpc_action](https://registry.terraform.io/providers/volterraedge/volterra/0.11.16/docs/resources/tf_params_action) | resource |
| [http_http.myip](https://registry.terraform.io/providers/hashicorp/http/latest/docs/data-sources/http) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auto_trust_localip"></a> [auto\_trust\_localip](#input\_auto\_trust\_localip) | if true, query ifconfig.io for public ip of terraform host. | `bool` | `false` | no |
| <a name="input_aws_az1"></a> [aws\_az1](#input\_aws\_az1) | Availability zone, will dynamically choose one if left empty | `string` | `null` | no |
| <a name="input_aws_az2"></a> [aws\_az2](#input\_aws\_az2) | Availability zone, will dynamically choose one if left empty | `string` | `null` | no |
| <a name="input_aws_az3"></a> [aws\_az3](#input\_aws\_az3) | Availability zone, will dynamically choose one if left empty | `string` | `null` | no |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | aws region | `string` | n/a | yes |
| <a name="input_external_subnets"></a> [external\_subnets](#input\_external\_subnets) | n/a | `map` | n/a | yes |
| <a name="input_instance_suffix"></a> [instance\_suffix](#input\_instance\_suffix) | n/a | `string` | n/a | yes |
| <a name="input_internal_subnets"></a> [internal\_subnets](#input\_internal\_subnets) | n/a | `map` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Volterra application namespace | `string` | n/a | yes |
| <a name="input_num_worker_nodes_per_az"></a> [num\_worker\_nodes\_per\_az](#input\_num\_worker\_nodes\_per\_az) | Number of XC worker nodes per Availability Zone | `number` | `0` | no |
| <a name="input_project_prefix"></a> [project\_prefix](#input\_project\_prefix) | projectPrefix name for tagging | `string` | n/a | yes |
| <a name="input_ssh_public_key"></a> [ssh\_public\_key](#input\_ssh\_public\_key) | n/a | `any` | n/a | yes |
| <a name="input_trusted_ip"></a> [trusted\_ip](#input\_trusted\_ip) | IP to allow external access | `string` | n/a | yes |
| <a name="input_volterra_cloud_cred_aws"></a> [volterra\_cloud\_cred\_aws](#input\_volterra\_cloud\_cred\_aws) | Name of the volterra aws credentials | `string` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | n/a | `any` | n/a | yes |
| <a name="input_workload_subnets"></a> [workload\_subnets](#input\_workload\_subnets) | n/a | `map` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_site_name"></a> [site\_name](#output\_site\_name) | n/a |
| <a name="output_site_type"></a> [site\_type](#output\_site\_type) | n/a |
<!-- END_TF_DOCS -->