GCP_PROJECT_ID=rapid-access-429801-b1
GCP_PROJECT_NUMBER=$(gcloud projects describe $GCP_PROJECT_ID --format="value(projectNumber)")

# Grant IAM Editor Role
gcloud projects add-iam-policy-binding $GCP_PROJECT_ID \
    --member="serviceAccount:$GCP_PROJECT_NUMBER@cloudbuild.gserviceaccount.com" \
    --role="roles/editor"

gcloud projects add-iam-policy-binding $GCP_PROJECT_ID \
    --member="serviceAccount:$GCP_PROJECT_NUMBER@cloudbuild.gserviceaccount.com" \
    --role="roles/secretmanager.admin"