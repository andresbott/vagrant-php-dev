#!/usr/bin/env bash

if [ $1 = "backup" ]; then
    echo "mysqldump --add-drop-database -B $2 > $3$2.sqldump"
    mysqldump "--add-drop-database" -B $2  > "$3$2.sqldump"
fi

if [ $1 = "restore" ]; then
    echo "mysql < "$3$2.sqldump""
    mysql < "$3$2.sqldump"
fi