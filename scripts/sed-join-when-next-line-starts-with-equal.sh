##
# sed script to join lines that end with equal signs.
#
# If a line begins with an equal sign, append it to the 
# previous line and replace the "=" with a single space.
#
# From http://sed.sourceforge.net/sed1line.txt
##

sed -e :a -e '$!N;s/\n=/ /;ta' -e 'P;D'
