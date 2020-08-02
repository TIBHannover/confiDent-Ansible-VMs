#!/bin/sh

# list of dbs to dump
for db in {{ dbs_list_str }}
do 
    mysqldump $db > {{ db_backup_dir }}/$db.sql
done

# use rdiff backup to keep versions of the content in $dumpdir
rdiff-backup {{ db_backup_dir }} {{ db_backup_dir_rdiff }}
# delete versions older than 2Weeks
rdiff-backup --remove-older-than 2W {{ db_backup_dir_rdiff }}
