#!/bin/sh

YEAR="1998"
read -p "Github Username: " USERNAME

if [ -z "$USERNAME" ]
then
  exit 1
fi

mkdir $YEAR
cd $YEAR
git init
echo "**$YEAR** - Generated by https://github.com/chumsrun/1998-script" > README.md
git add .
GIT_AUTHOR_DATE="$YEAR-10-27T00:00:00" GIT_COMMITTER_DATE="$YEAR-10-27T00:00:00" git commit -m "$YEAR"
git remote add origin https://github.com/$USERNAME/$YEAR.git
git push -u origin master -f
cd ..
rm -rf $YEAR

echo
echo Cool, Done
