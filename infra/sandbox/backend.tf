terraform {
  backend "gcs" {
    bucket = "vaulted-cogency-429801-h7_cloudbuild"
    prefix = "sandbox/crj-demo"
  }
}