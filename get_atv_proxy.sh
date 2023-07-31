echo "Connect to all atvs currently online"
while read -r p; do
  adb connect ${p}:5555 
  echo "Checking proxy settings"
  adb shell -n settings get global http_proxy
  adb disconnect ${p} > /dev/null
  sleep 5
done < atvips

