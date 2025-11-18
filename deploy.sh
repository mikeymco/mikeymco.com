#!/bin/bash

# Sync `_site/` to S3 with CloudFront invalidation
set -e

echo "Syncing to S3..."
aws s3 sync _site/ s3://mikeymco.com --delete --cache-control "max-age=300"

echo "Invalidating CloudFront cache..."
INVALIDATION_ID=$(aws cloudfront create-invalidation --distribution-id E17VKRWLXH7MOZ --paths "/*" --query 'Invalidation.Id' --output text)

echo "Created invalidation: $INVALIDATION_ID"

echo "Deployment complete! mikeymco.com is live & @ latest"
