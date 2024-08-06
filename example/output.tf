# Output for the VPC ID
output "vpc_id" {
  value       = module.vpc.id
  description = "The ID of the created VPC"
}

# Output for the Public Subnet IDs
output "public_subnet_ids" {
  value       = module.subnets.public_subnet_id
  description = "The IDs of the created public subnets"
}

# Output for the Private Subnet IDs
output "private_subnet_ids" {
  value       = module.subnets.private_subnet_id
  description = "The IDs of the created private subnets"
}

# Output for the Internet Gateway ID
output "igw_id" {
  value       = module.vpc.igw_id
  description = "The ID of the created Internet Gateway"
}

# Output for the WorkSpaces Directory ID
output "workspaces_directory_id" {
  value       = module.workspace.workspaces_directory_id
  description = "The ID of the WorkSpaces Directory"
}

# Output for each Workspace ID
output "workspace_ids" {
  value       = { for k, v in module.workspace.workspace_ids : k => v }
  description = "The IDs of the created WorkSpaces"
}

# Output for each Workspace User Name
output "workspace_user_names" {
  value       = { for k, v in module.workspace.workspace_user_names : k => v }
  description = "The user names associated with the created WorkSpaces"

}
