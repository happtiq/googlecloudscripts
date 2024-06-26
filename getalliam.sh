for projectid in `gcloud projects list --format='value(project_id)'`; do
  gcloud projects get-ancestors-iam-policy $projectid --format=json | jq '.[].policy.bindings[] | select(.members[] | contains("user:"))'
done
