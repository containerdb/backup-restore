export FILE_PATH="/tmp/$FILE_NAME"
mysqldump --verbose --host=$DB_HOST --user=$DB_USER --port=$DB_PORT --password=$DB_PASS --all-databases > $FILE_PATH

sh /app/backup/push.sh || exit 1
