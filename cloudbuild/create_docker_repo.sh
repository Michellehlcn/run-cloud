GCP_PROJECT_ID=rapid-access-429801-b1

gcloud artifacts repositories create repo \
    --project=$GCP_PROJECT_ID \
    --repository-format=docker \
    --location=australia-southeast1 \
    --description="Docker repository"
