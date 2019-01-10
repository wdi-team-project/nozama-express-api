#!/bin/bash

API="http://aim-application-api.herokuapp.com"
URL_PATH="/sign-in"

EMAIL="duck@duck.com"
PASSWORD="duck"
PASSWORD_CONFIRMATION="duck"


curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'"
    }
  }'

echo
