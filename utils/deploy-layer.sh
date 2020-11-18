#!/bin/bash
set -eo pipefail

ARTIFACT_BUCKET=lambda-artifacts-b84dde5cea50676a
LAYER_ZIP=lambda_recaptcha_layer_nodejs12.zip 

aws s3 cp $LAYER_ZIP s3://$ARTIFACT_BUCKET

aws lambda publish-layer-version \
  --layer-name lambda-recaptcha-layer-nodejs12 \
  --content S3Bucket=$ARTIFACT_BUCKET,S3Key=$LAYER_ZIP \
  --region us-east-1 \
  --compatible-runtimes nodejs12.x