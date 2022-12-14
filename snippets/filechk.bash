#1/bin/bash
filepath="/etc/passwd"
if [ -e $filepath ]; then
  echo "file $filepath exists"
else
  echo "file $filepash does not exist"
fi

dirpath="/usr/bin"
if [ -d "$dirpath" ]; then
  echo "directory $dirpath exists"
else
  echo "directory $dirpath does not exist"
fi
