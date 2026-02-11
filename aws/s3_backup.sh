#!/bin/bash

# Backup script for uploading logs to S3 bucket
# Used in automated server backup workflows

BUCKET="my-demo-backup-bucket"
SOURCE="/var/log"

echo "Starting backup..."

# Copy all files to S3
aws s3 cp $SOURCE s3://$BUCKET --recursive

echo "Backup completed"
