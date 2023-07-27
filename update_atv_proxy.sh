echo "Connect to all atvs currently online"
while read -r p; do
  echo "Connecting to ${p}"
  adb connect ${p}:5555
  echo "Updating proxy settings"
  # change for proxy ip
  adb shell -n settings put global http_proxy 192.168.1.190:9100
  # echo "Reset proxy settings to default"
  # adb shell settings put global http_proxy :0
  echo "Rebooting atv and disconnecting"
  adb reboot
  adb disconnect ${p} > /dev/null
done < atvips

