while read -r p; do
  adb connect ${p}:5555 > /dev/null
  { echo "${p}: "; adb shell -n settings get global http_proxy;} 
  adb disconnect ${p} > /dev/null
done < atvips

