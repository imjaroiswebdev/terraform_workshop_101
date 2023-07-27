variable "pagerduty_token" {
  type        = string
  description = "Your PagerDuty token from env vars like TF_VAR_pagerduty_token or .tfvars file"
  sensitive   = true
}

