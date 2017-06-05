export FILE_PATH="/tmp/$FILE_NAME"
redis-cli -h $REDIS_HOST -a $REDIS_PASSWORD -p $REDIS_PORT --rdb - SAVE > $FILE_PATH \ &&

sh /app/backup/push.sh || exit 1
