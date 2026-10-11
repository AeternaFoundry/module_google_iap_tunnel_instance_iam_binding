variable "iap_tunnel_instance_iam_bindings" {
  description = <<EOT
Map of iap_tunnel_instance_iam_bindings, attributes below
Required:
    - instance
    - members
    - role
Optional:
    - project
    - zone
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    instance = string
    members  = set(string)
    role     = string
    project  = optional(string)
    zone     = optional(string)
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

