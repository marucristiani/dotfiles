##
# Delete all trailing blank lines.
# From http://sed.sourceforge.net/sed1line.txt
##

sed -e :a -e '/^\n*$/{$d;N;ba' -e '}' 
