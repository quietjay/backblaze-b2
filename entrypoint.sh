#!/bin/sh
echo "authorize account"
b2 authorize-account "$B2_ACCOUNTID" "$B2_APPLICATIONKEY"
echo "call b2"
b2 $@
echo "Press enter to exit"
read