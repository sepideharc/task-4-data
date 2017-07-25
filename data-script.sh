#1/bin/bash




#create unique identifier
IDENTIFIER="`echo $RANDOM$RANDOM$RANDOM | sha1sum | sed 's/[^0-9a-fA-F]//g' | sed -e 's/^/0x/'`"


# Ask the user for their GHUSERNAME
echo "Hello, what is your GHUSERNAME?"
read GHUSERNAME

# ask what is their favorite book?
echo "What is your favorite book?"
read book 

# ask what is their favorite food?
echo "What is your favorite food?"
read food 

# ask what is their favorite animal?
echo "What is your favorite animal?"
read animal 

# ask what is their favorite movie?
echo "What is your favorite movie?"
read movie 

# ask what is their favorite hobby?
echo "What is your favorite hobby?"
read hobby 

 

# variable for date 
RIGHT_NOW=$(date +"%x %r %Z")
TIME_STAMP="Updated on $RIGHT_NOW by $GHUSERNAME"

#get the  current time/date
echo "$TIME_STAMP"


# write data to temp.csv file
echo "$IDENTIFIER,$RIGHT_NOW,$GHUSERNAME,$book,$food,$animal,$movie,$hobby" > ./temp.csv

# read out the data in a csv file
cat ./temp.csv


# Back up data
cat ./temp.csv >> data-backup.csv

#write data into databases
#bash ./write-to-db.sh


# Remove temp file
rm temp.csv






