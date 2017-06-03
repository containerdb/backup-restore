export FILE_PATH="/tmp/$FILE_NAME"
PGPASSWORD=$DB_PASS pg_dumpall -h $DB_HOST -U $DB_USER -p $DB_PORT > $FILE_PATH

if [ $BACKUP_PROVIDER = "s3" ]; then
  sh /app/backup/s3.sh || exit 1
elif [ $BACKUP_PROVIDER = "local" ]; then
  sh /app/backup/local.sh || exit 1
fi
