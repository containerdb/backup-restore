FILE_PATH="/tmp/$FILE_NAME"
PGPASSWORD=$DB_PASS pg_dumpall -h $DB_HOST -U $DB_USER -p $DB_PORT > $FILE_PATH || exit 1

if [ $BACKUP_PROVIDER = "s3" ]; then
  sh /app/bin/s3/put.sh
fi
