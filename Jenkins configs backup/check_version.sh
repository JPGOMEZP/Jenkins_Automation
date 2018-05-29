#!/bin/bash

check_version(){

wget https://www.kernel.org/releases.json
cat releases.json | grep version | cut -d ':' -f2 | cut -d '"' -f2 | awk 'FNR == 2 {print}' > latest_version.txt

old=$(cat old_version.txt)
VERSION=$(cat latest_version.txt)

if [[ "$VERSION" > "$old" ]]; then
  echo "The current version is:$old"
  echo "The new version available is:$VERSION"
  echo "Please Download the New Kernel Version"
  echo "VERSION=$(cat latest_version.txt)" > current_mainline
  cp latest_version.txt old_version.txt

  return 0
else
 echo "The current version is:$old"
 echo "The new version available is:$VERSION"
 echo "Current Version:$old is OK"
 return 1
fi

}
rm -rf releases.json*

check_version
