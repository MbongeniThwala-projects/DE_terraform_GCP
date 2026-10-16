variable "credentials" {
  description = "GOOGLE_CREDENTIALS"
  default     = "./keys/my-creds.json"
}

variable "project" {
  description = "Project"
  default     = "project-4f598fab-e29b-4600-b49"
}

variable "region" {
  description = "Region"
  default     = "africa-south1"
}

variable "location" {
  description = "Project Location"
  default     = "africa-south1"
}

variable "bq_dataset_name" {
  description = "My BigQuery Dataset Name"
  default     = "demo_dataset"
}

variable "gsc_bucket_name" {
  description = "My Storage Bucket Name"
  default     = "project-4f598fab-e29b-4600-b49-terra-bucket"
}

variable "gcs_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"
}