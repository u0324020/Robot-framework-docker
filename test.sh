# cd robot
# docker-compose up -d
# sleep 5s
[ -f reports/log.html ] && docker-compose down && echo "[ Robot-Debug ] l1-testing is finished" || echo "[ Robot-Debug ] log file not exists && exit 1"
echo "hi"
cd -