GCP_PROJECT_ID=vaulted-cogency-429801-h7

gcloud artifacts repositories create repo \
    --project=$GCP_PROJECT_ID \
    --repository-format=docker \
    --location=australia-southeast1 \
    --description="Docker repository"
