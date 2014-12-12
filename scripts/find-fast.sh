##
# Taken from https://github.com/SixArm/sixarm_unix_shell_scripts
# Find script with pruning of /dev, /proc, /tmp, .git, .svn, etc.
##

find -noleaf -path "/dev"-prune -o -path "/proc" -prune -o -path "/tmp" -o -path "/sys" -prune -o -prune -o -name ".git" -prune -o -name ".svn" -prune -o $@
