module "aws" {
  source = "../_base"

  name             = "rhel-9.0-ga-x86_64"
  ami              = "ami-0f7c7d22de9e097ea"
  instance_types   = ["c6i.large", "c6a.large"]
  internal_network = var.internal_network
}

variable "internal_network" {
  type        = bool
  description = "Whether this instance should be in the internal network (default: false)."
  default     = false
}

output "ip_address" {
  value = module.aws.ip_address
}
