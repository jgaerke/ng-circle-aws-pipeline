#!/usr/bin/env bash

aws s3 sync $1 s3://ng-circle-aws-pipeline/ --delete --region us-east-2 \
--exclude "*.html"  \
--metadata-directive REPLACE --expires 2100-01-01T00:00:00Z --cache-control max-age=2592000,public

aws s3 sync $1 s3://ng-circle-aws-pipeline/ --delete --region us-east-2 \
--exclude "*" --include "*.html" \
--metadata-directive REPLACE --cache-control max-age=60,public

