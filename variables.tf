variable "allowed_account_ids" {
  default     = []
  description = "Optional list of AWS Account IDs that are permitted to write to the bucket"
  type        = list(string)
}

variable "bucket_name" {
  default     = null
  description = "Name of the S3 bucket to create. Defaults to {account_id}-{region}-cloudtrail."
  type        = string
}

variable "roles_allowed_kms_decrypt" {
  default     = []
  description = "Optional list of roles that have access to KMS decrypt and are permitted to decrypt logs"
  type        = list(string)
}

variable "logging_bucket" {
  description = "S3 bucket with suitable access for logging requests to the cloudtrail bucket"
  type        = string
}

variable "region" {
  description = "Region to create KMS key in"
  type        = string
}

variable "tags" {
  default     = {}
  description = "Mapping of any extra tags you want added to resources"
  type        = map(string)
}
