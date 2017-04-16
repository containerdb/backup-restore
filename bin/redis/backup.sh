FILE_PATH="/tmp/$FILE_NAME"
redis-cli -h $REDIS_HOST -a $REDIS_PASSWORD -p $REDIS_PORT --rdb - SAVE > $FILE_PATH \ &&
/usr/bin/s3cmd --access_key=$AWS_ACCESS_TOKEN --secret_key=$AWS_SECRET_KEY put $FILE_PATH s3://$AWS_BUCKET_NAME/$FILE_NAME
