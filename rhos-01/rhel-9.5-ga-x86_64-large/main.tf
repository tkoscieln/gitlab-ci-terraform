module "openstack" {
  source = "../_base"

  name      = "rhel-9-5-ga-large"
  image_id  = "0039df68-6aea-47a5-8c53-186aedb4051d"
  flavor_id = "2c6908ed-bb2b-43c7-8f9d-de790df5a4c0"
}

output "ip_address" {
  value = module.openstack.ip_address
}
