FILE_PATH="/tmp/$FILE_NAME"
mysqldump --host=$DB_HOST --user=$DB_USER --port=$DB_PORT --password=$DB_PASS --all-databases > $FILE_PATH
/usr/bin/s3cmd --access_key=$AWS_ACCESS_TOKEN --secret_key=$AWS_SECRET_KEY put $FILE_PATH s3://$AWS_BUCKET_NAME/$FILE_NAME
