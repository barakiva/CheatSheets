#!/bin/bash
# Set Azure credentials as environment variables

export ARM_CLIENT_ID=""
export ARM_CLIENT_SECRET=""
export ARM_SUBSCRIPTION_ID=""
export ARM_TENANT_ID=""

# Verify the exports
env | grep ARM_
