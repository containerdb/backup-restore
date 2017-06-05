if [ $BACKUP_PROVIDER = "s3" ]; then
  sh /app/backup/s3.sh || exit 1
elif [ $BACKUP_PROVIDER = "local" ]; then
  sh /app/backup/local.sh || exit 1
fi
