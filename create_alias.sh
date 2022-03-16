#!/usr/bin/env bash

# create bucket and upload data
oc project minio

ROUTE_ADDRESS=$(oc get routes.route.openshift.io  api -o=jsonpath='{.status.ingress[0].host}{"\n"}')

echo $ROUTE_ADDRESS

mc alias set s3 https://$ROUTE_ADDRESS/ AKIAIOSFODNN7EXAMPLE wJalrXUtnFEMIK7MDENGbPxRfiCYEXAMPLEKEY --api S3v4 --insecure


mc mb s3/databucket --insecure

mc ls s3 --insecure

mc cp ./HistoricalData_IBM.csv s3/databucket --insecure
mc cp ./HistoricalData_ABNB.csv s3/databucket --insecure
mc ls s3 --insecure
