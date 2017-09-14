#!/bin/sh

API="http://localhost:4741"
URL_PATH="/products"
TITLE="Banana"
PRICE=1
IMAGE_LINK="https://i.imgur.com/MaBYUjZ.jpg"

curl --include --request POST "${API}${URL_PATH}" \
  --header "Content-Type: application/json" \
  --data '{
    "product": {
      "title": "'"${TITLE}"'",
      "price": "'"${PRICE}"'",
      "imageLink": "'"${IMAGE_LINK}"'"
    }
  }'
