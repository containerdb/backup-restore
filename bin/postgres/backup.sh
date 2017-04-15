FILE_PATH="/tmp/$FILE_NAME"
PGPASSWORD=$DB_PASS pg_dumpall -h $DB_HOST -U $DB_USER -p $DB_PORT > $FILE_PATH && \
/usr/bin/s3cmd --access_key=$AWS_ACCESS_TOKEN --secret_key=$AWS_SECRET_KEY put $FILE_PATH s3://$AWS_BUCKET_NAME/$FILE_NAME
