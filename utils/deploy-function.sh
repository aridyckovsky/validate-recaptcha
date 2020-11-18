#!/bin/bash
set -eo pipefail

FUNCTION_BUCKET=general-lambda-functions
FUNCTION_NAME=validate_recaptcha_function
FUNCTION_ZIP=validate_recaptcha_handler.zip

aws s3 cp $FUNCTION_ZIP s3://$FUNCTION_BUCKET

aws lambda update-function-code \
  --function $FUNCTION_NAME \
  --zip-file fileb://$FUNCTION_ZIP
