# outputs of aws workspaces directory id
output "ad_id" {
  value = join("", aws_workspaces_directory.main[*].id)
}

# Output for the Directory Service
output "directory_service_id" {
  description = "The ID of the Directory Service"
  value       = aws_directory_service_directory.main.id
}

# Output for the WorkSpaces IP Group
output "workspaces_ip_group_id" {
  description = "The ID of the WorkSpaces IP Group"
  value       = aws_workspaces_ip_group.ipgroup.id
}

# Output for the WorkSpaces Directory
output "workspaces_directory_id" {
  description = "The ID of the WorkSpaces Directory"
  value       = aws_workspaces_directory.main.id
}

# Output for each Workspace
output "workspace_ids" {
  value       = { for k, v in aws_workspaces_workspace.workspace_ad : k => v.id }
  description = "The IDs of the created WorkSpaces"
}

# Optional: Output for Workspace User Names
output "workspace_user_names" {
  description = "The user names associated with the created WorkSpaces"
  value       = { for k, v in aws_workspaces_workspace.workspace_ad : k => v.user_name }
}
