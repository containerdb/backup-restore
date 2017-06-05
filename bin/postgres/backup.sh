export FILE_PATH="/tmp/$FILE_NAME"
PGPASSWORD=$DB_PASS pg_dumpall -h $DB_HOST -U $DB_USER -p $DB_PORT > $FILE_PATH

sh /app/backup/push.sh || exit 1
