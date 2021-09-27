
# while [ ! -f Dockerfile ]
#   do
#      sleep SOME_SECONDS
#   done
# echo "file found"

# After 60 seconds the loop will exit
timeout=300

while [ ! -f Dockerfile ];
do
  # When the timeout is equal to zero, show an error and leave the loop.
  if [ "$timeout" == 0 ]; then
    echo "ERROR: Timeout while waiting for the file /tmp/list.txt."
    exit 1
  fi
  sleep 1
  ((timeout--))
  echo "[ Robot-Debug ] waiting for reports generate: $timeout s"
done
echo "file found"