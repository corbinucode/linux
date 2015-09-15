#!/bin/bash
#
# Set daily directories for skype and firefox downloads
# and adjusts the current links

# current date
readonly DATE=$(date --date="tomorrow" +%Y%m%d)

# base directory
readonly DIR_PREFIX="/home/$(whoami)/Downloads"



#####################################################
# creates a new directory with today's date as name
# Globals:
#   DATE
#   DIR_PREFIX
# Arguments:
#   name of subdirectory
# Returns:
#   None
#####################################################
handle_dir() {
  # setup directories
  directory="${DIR_PREFIX}/archive/$1/${DATE}"
  link="${DIR_PREFIX}/$1"
  
  # echo $directory
  # echo $link

  # create directory
  mkdir -p ${directory}
  
  # renew linl
  if [[ -e ${link} ]]
  then
    unlink ${link}
  fi
  ln -s ${directory} ${link}
}

#####################################################
# main function
# Globals:
#   None
# Arguments:
#   None
# Returns:
#   None
#####################################################
main() {

  # echo $DATE
  # echo $DIR_PREFIX

  handle_dir "firefox"
  handle_dir "skype"

  exit 0
}

main "$@"