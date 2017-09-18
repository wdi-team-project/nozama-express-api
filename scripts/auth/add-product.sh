#/bin/bash

API="http://localhost:4741"
URL_PATH="/users"
TITLE="banana"
PRICE=2
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "products": {
      "title": "'"${TITLE}"'",
      "price": "'"${PRICE}"'"
    }
  }'

echo
