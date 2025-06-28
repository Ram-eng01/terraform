# output "azs_info" {
#     value = module.vpc.azs.names.   # module.<module-name>.<output-name>
# }


output "vpc_id" {
   value = module.vpc.vpc_id
}

output "public_subnets" {
  value = module.vpc.public_subnet_ids
}


output "database_group_subnets_ids" {
  value = module.vpc.database_subnet_ids
}