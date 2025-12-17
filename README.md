# GKE Deployment Sample

This is a sample Python Flask application set up for deployment to Google Kubernetes Engine (GKE) using GitHub Actions.

## Prerequisites

- Google Cloud Project with GKE cluster
- Service Account with necessary permissions
- GitHub repository secrets configured

## GitHub Secrets Required

Set the following secrets in your GitHub repository:

- `GCP_SA_KEY`: JSON key for the GCP Service Account
- `GCP_PROJECT`: Your GCP Project ID
- `GKE_CLUSTER`: Name of your GKE cluster
- `GKE_ZONE`: Zone where your GKE cluster is located

## Deployment

The application will automatically deploy when you push to the `main` branch.

## Local Development

To run locally:

1. Install dependencies: `pip install -r requirements.txt`
2. Run the app: `python app.py`
3. Visit http://localhost:5000

## Kubernetes Manifests

- `k8s/deployment.yaml`: Defines the deployment and service for the app

## Troubleshooting

- Ensure your GKE cluster is running and accessible
- Check that the Service Account has the required IAM roles (e.g., Container Registry Service Agent, Kubernetes Engine Service Agent)
- Verify the image is pushed to GCR and the deployment is updated