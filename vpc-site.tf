resource "volterra_aws_vpc_site" "example" {
    name       = format("%s-vpc-%s", var.project_prefix, var.instance_suffix)
    namespace  = "system"
    aws_region = var.aws_region
    ssh_key    = var.ssh_public_key
    vpc {
        vpc_id     = var.vpc_id
    }
    
    // One of the arguments from this list "default_blocked_services blocked_services" must be set
    default_blocked_services = true

    // One of the arguments from this list "aws_cred" must be set

    aws_cred {
        name      = var.volterra_cloud_cred_aws
        namespace = "system"
    }
    // One of the arguments from this list "direct_connect_disabled direct_connect_enabled" must be set
    direct_connect_disabled = true
    instance_type           = "t3.xlarge"

    // One of the arguments from this list "logs_streaming_disabled log_receiver" must be set
    logs_streaming_disabled = true

    // One of the arguments from this list "ingress_gw ingress_egress_gw voltstack_cluster" must be set

    ingress_gw {
        allowed_vip_port {
            // One of the arguments from this list "use_http_port use_https_port use_http_https_port custom_ports" must be set
            use_http_port = true
        }

        aws_certified_hw    = "aws-byol-voltmesh"

        az_nodes {
            aws_az_name = var.aws_az1
            local_subnet {
                existing_subnet_id = var.internal_subnets["az1"].id
            }
        }

        az_nodes {
            aws_az_name = var.aws_az2
            local_subnet {
                existing_subnet_id = var.internal_subnets["az2"].id
            } 
        }

        az_nodes {
            aws_az_name = var.aws_az3
            local_subnet {
                existing_subnet_id = var.internal_subnets["az3"].id
            }
        }

    }
    // One of the arguments from this list "nodes_per_az total_nodes no_worker_nodes" must be set
    nodes_per_az = var.num_worker_nodes_per_az 
    #total_nodes = 6
    #no_worker_nodes = true
    lifecycle {
        ignore_changes = [
            labels,
        ]
    }
}


resource "volterra_cloud_site_labels" "labels" {
  name             = volterra_aws_vpc_site.example.name
  site_type        = "aws_vpc_site"
  # need at least one label, otherwise site_type is ignored
  labels           = { "site-group" = var.project_prefix }
  #ignore_on_delete = var.f5xc_cloud_site_labels_ignore_on_delete
}

resource "volterra_tf_params_action" "aws_vpc_action" {
  site_name        = volterra_aws_vpc_site.example.name
  site_kind        = "aws_vpc_site"
  action           = "apply"
  wait_for_action  = true
  ignore_on_update = false
}