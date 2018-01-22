#!/bin/sh
#set -x
IP_ADDR=`ip a s | grep inet`

while :; do
echo "<!DOCTYPE html>
<html><head>
<style>
body {
  background-color: $BG_COLOR
}
</style>
</head>
<body>
<title>Test page</title>
version: $BUILD_VERSION<br>
<pre>
<h1>$IP_ADDR</h1>
<pre>
</body></html>" | nc -l -q1 -p 8080;
done
