#!/bin/sh

IP_ADDR=`ip a s | grep inet`

echo "
<!DOCTYPE html>
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
</body></html>"

