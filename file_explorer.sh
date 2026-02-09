#!/bin/bash

check_item() {
  local item="$1"
  echo "Checking: $item"

  if [ -e "$item" ]; then
    echo "Exists: Yes"
    if [ -f "$item" ]; then
      echo "Type: File"
    elif [ -d "$item" ]; then
      echo "Type: Directory"
    fi
    if [ -r "$item" ]; then
      echo "Readable: Yes"
    else
      echo "Readable: No"
    fi
  else
    echo "Exists: No"
  fi
  echo ""
}

# Main script
if [ $# -eq 0 ]; then
  echo "Please provide a file or directory name as an argument."
  exit 1
fi

check_item "$1"
