#!/bin/sh
set -e

# Run Deployment
java -cp /sfdxlean.jar com.cf.services.RunDeployment \
    -m=/app/dist \
    -h=${INPUT_SF_URL} \
    -u=${INPUT_SF_USERNAME} \
    -p=${INPUT_SF_PASSWORD} \
    -t=${INPUT_SF_TESTLEVEL} \
    -v=${INPUT_SF_NOCHECKONLY}