API="http://localhost:4741"
URL_PATH="/users"
ID="59bc228cfe20142b7adbdaf6"
TOKEN="rXwB9gGngSB5yoxgWmtDcU4Tk9ZX2K3+8E5Sxi3e7ow=--WEe341ZKF/lnR0w1EGqmBXQDKTsvMQwLDSbDvT8ZPV4="

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
