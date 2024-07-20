set -e

GCP_PROJECT_ID=vaulted-cogency-429801-h7
GCP_SA=cloud-run-job-sa

gcloud projects add-iam-policy-binding $GCP_PROJECT_ID \
    --member="serviceAccount:$GCP_SA@$GCP_PROJECT_ID.iam.gserviceaccount.com" \
    --role="roles/run.admin"

gcloud workflows deploy cloud-run-job-workflow \
    --location=australia-southeast1 \
    --source=cloud-run-job-workflow.yaml \
    --service-account=$GCP_SA@$GCP_PROJECT_ID.iam.gserviceaccount.com
