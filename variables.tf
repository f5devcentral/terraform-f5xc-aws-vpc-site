variable "project_prefix" {
  type        = string
  description = "projectPrefix name for tagging"
}
variable "instance_suffix" {
  type = string
}

variable "trusted_ip" {
  type        = string
  description = "IP to allow external access"
}

variable "namespace" {
  description = "Volterra application namespace"
  type        = string
}


variable "volterra_cloud_cred_aws" {
  description = "Name of the volterra aws credentials"
  type        = string
}

variable "aws_region" {
  description = "aws region"
  type        = string
}

variable "aws_az1" {
  description = "Availability zone, will dynamically choose one if left empty"
  type        = string
  default     = null
}
variable "aws_az2" {
  description = "Availability zone, will dynamically choose one if left empty"
  type        = string
  default     = null
}
variable "aws_az3" {
  description = "Availability zone, will dynamically choose one if left empty"
  type        = string
  default     = null
}
variable "vpc_id" {}
variable "external_subnets" {
  type = map
}
variable "internal_subnets" {
  type = map
}
variable "workload_subnets" {
  type = map
}
variable "ssh_public_key" {}

variable "numWorkerNodesPerAz" {
  description = "Number of XC worker nodes per Availability Zone"
  type = number
}
