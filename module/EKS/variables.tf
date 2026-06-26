variable "cluster_name" {
    type = string
}

variable "cluster_version" {
    type = string
}

variable "subnet_ids" {
  description = "Subnet IDs"
  type        = list(string)
}

variable "vpc_id"{
    type = string
}
variable "node_groups" {
  description = "EKS node group configuration"
  type = map(object({
    instance_types = list(string)
    capacity_type  = string
    scaling_config = object({
      desired_size = number
      max_size     = number
      min_size     = number
    })
  }))
}
