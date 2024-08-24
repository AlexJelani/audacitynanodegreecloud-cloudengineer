# Declare the load balancer name
variable "load_balancer_name" {
  description = "The name of the load balancer"
  type        = string
  default     = "my-alb"  # You can set a default value or leave it to be provided at runtime
}

# Declare security group IDs for the load balancer
variable "security_group_ids" {
  description = "List of security group IDs for the load balancer"
  type        = list(string)
  default     = []  # Provide a list of security group IDs
}

# Declare subnet IDs
variable "subnet_ids" {
  description = "List of subnet IDs to associate with the load balancer"
  type        = list(string)
  default     = []  # Default is empty; you can override this when applying the plan
}
