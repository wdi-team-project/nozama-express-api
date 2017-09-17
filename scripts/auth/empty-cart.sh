#/bin/bash

API="http://localhost:4741"
URL_PATH="/users"
ID="59bc228cfe20142b7adbdaf6"
TOKEN="rXwB9gGngSB5yoxgWmtDcU4Tk9ZX2K3+8E5Sxi3e7ow=--WEe341ZKF/lnR0w1EGqmBXQDKTsvMQwLDSbDvT8ZPV4="
# TITLE="banana"
# PRICE=2
curl "${API}${URL_PATH}/${ID}/cart" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "products": {

    }
  }'

echo
