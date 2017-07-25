#1/bin/bash

# Run thi script after collecting data in data backup.csv
# Set MySQL credentials
MYSQLUSER=root
MYSQLPASS=root

# Set database and table names
MYDATABASE=sepidehdatabase
MYTABLE=tblSurveyQuestions

# copy everything in backup into temp in the SQL
sudo cp data-backup.csv /var/lib/mysql-files/temp.csv
# Get to my SQL

mysql -u"$MYSQLUSER" -p"$MYSQLPASS" -e "CREATE DATABASE $MYDATABASE"

mysql -u"$MYSQLUSER" -p"$MYSQLPASS" -e "CREATE TABLE $MYTABLE (IDENTIFIER VARCHAR(255), RIGHT_NOW TIMESTAMP ,GHUSERNAME VARCHAR (255),book VARCHAR (255),food VARCHAR (255), animal VARCHAR (255), movie VARCHAR (255),hobby VARCHAR (255)); ALTER TABLE $MYTABLE ADD PRIMARY KEY (IDENTIFIER);" $MYDATABASE

# Write data from tmp.csv into database table
echo "Writing new data to $MYTABLE in database $MYDATABASE."
mysql -u"$MYSQLUSER" -p"$MYSQLPASS" -e "LOAD DATA INFILE '/var/lib/mysql-files/temp.csv' INTO TABLE $MYTABLE FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '\"';" $MYDATABASE
echo "Data written successfully."
# Dump current version of database into export file
echo "Survey data dumped to file `date --iso-8601`-$MYDATABASE.sql"
mysqldump -u"$MYSQLUSER" -p"$MYSQLPASS" $MYDATABASE > `date --iso-8601`-$MYDATABASE.sql
# remove /var/lib/mysql-files/tmp.csv
sudo rm /var/lib/mysql-files/temp.csv