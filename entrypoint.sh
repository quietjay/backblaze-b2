#!/bin/sh
echo "authorize account"
b2 authorize-account "$B2_ACCOUNTID" "$B2_APPLICATIONKEY"
echo "list buckets"
b2 list-buckets
echo "help"
b2 help $@
echo "Press enter to exit"
read