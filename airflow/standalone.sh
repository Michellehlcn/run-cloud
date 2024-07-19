GCP_PROJECT_ID=rapid-access-429801-b1

AIRFLOW__CORE__DAGS_FOLDER=$(pwd)/dags GCP_PROJECT=$GCP_PROJECT_ID GOOGLE_APPLICATION_CREDENTIALS="$HOME/.config/gcloud/application_default_credentials.json" airflow standalone
