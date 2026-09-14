# This script is to check diff between files..
# You need to unpack the src into 2 cataloges..
# You should edit files in one of the cataloges..
# The other will be used as a difference check.


YOURNAME=your_full_name_with_underscore
# example: YOURNAME=rolf_holtsmark

ORGINALCODE="/path/to/src/orginal" # This code is not changed
MYCODE="/path/to/src/mycode" # This is where you edit your copy of this code...


#
# Information:
#
# When you have downloaded the latest code, you create 2 directorys.. 
# one that you'll be doing your programming on and one that is used as a referance.
#
# cd /where/you/want/to/develop/kplaylist
# mv kplaylist-src-xxx.tar.gz /where/you/want/to/develop/kplaylist
#
# mkdir orginal
# cd orginal
# tar xvzf ../kplaylist-src-xxx.tar.gz
# cd ..
# 
# mkdir develop
# cd develop
# tar xvzf ../kplaylist-src-xxx.tar.gz
# cd ..
# 
# Do not touch orginal....
# 
# When you have finished some code.. you use this script 
# Edit the tree lines on the top that tells where your code is located and what your name is... 
# 
# It will create a tar.gz file with diff-files so our update on the real code will be easy.
#


##############################################################################
# Please: Do not edit the file version/build.
# They are needed for kplaylist admins to verify your code patch.

cd $MYCODE
rm *.diff

# Read date, build and version that you created your patch for.
DATE=`date +%d-%m-%y_%H.%M`
BUILD=`cat current/build`
KVER=`cat current/version`

# Create diff files for all files found in the file filelist
for f in `cat filelist`
do
  # -w makes it more easy to read the diff-file.
  diff $f $ORGINALCODE/$f -w > $f.diff
done

# Pack all files that belongs to your patch.
tar cvzf $YOURNAME-patch.$KVER.$BUILD.$DATE.tar.gz *

echo " "
echo "Please send $YOURNAME-patch.$KVER.$BUILD.$DATE.tar.gz as a attachment to kplaylist@kplaylist.com"
echo " "
echo "Example: "
echo "pine kplaylist@kplaylist.com -attach $YOURNAME-patch.$KVER.$BUILD.$DATE.tar.gz"
