mkdir -p logs
echo "Connect to all atvs currently online"
while read p; do
  echo "Connecting to ${p} and pulling log"
  adb connect ${p}:5555 > /dev/null
  adb pull /data/local/tmp/atlas.log > /dev/null
  mv atlas.log logs/atv-${p}.log
  echo "Disconnecting from ${p}"
  adb disconnect ${p} > /dev/null
done < atvips

