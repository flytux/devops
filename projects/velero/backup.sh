export TARGET=/home/jaehoon/data/pv
export WORK=/home/jaehoon/work
export BACKUP_ROOT=/home/jaehoon/data/backup
export BACKUP_FILE=backup-$(date '+%Y-%m-%d-%H-%M-%S').tgz

tar cvzf $BACKUP_ROOT/$BACKUP_FILE $TARGET

find $BACKUP_ROOT -type f -mtime +14 | sort | xargs rm -f

mc alias set backup http://192.168.219.112 minio minio123
mc cp $BACKUP_ROOT/$BACKUP_FILE backup/pv-backup/nfs/$BACKUP_FILE

#crontab
#0 0 * * * /home/dluser/work/scripts/backup.sh
