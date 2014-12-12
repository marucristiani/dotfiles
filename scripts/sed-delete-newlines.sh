##
# Use sed to delete all the newlines except the last one, which we want for normal output.
#  
# By Zsolt Botykai on Stack Overflow:
# http://stackoverflow.com/questions/1251999/sed-how-can-i-replace-a-newline-n
##

sed ':a;N;$!ba;s/\n/ /g'
