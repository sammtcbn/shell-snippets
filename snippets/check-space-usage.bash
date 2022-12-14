#!/bin/bash

function show_date()
{
  date
  echo
}

function show_df()
{
  echo df -h
  df -h
  echo
}

function show_path()
{
  local path=$1
  echo sudo du -h -s ${path}
  sudo du -h -s ${path}
  echo
}

show_date
show_df
show_path ~/.ros/log
show_path /boot
show_path /dev
show_path /etc
show_path /home
show_path /media
show_path /mnt
show_path /opt
#show_path /proc
show_path /root
show_path /run
show_path /snap
show_path /srv
show_path /sys
show_path /tmp
show_path /unit_tests
show_path /usr
show_path /var
show_path /var/log
show_path /var/log/journal/
show_path /var/lib/docker
show_path /var/lib/docker/overlay2
show_path /var/lib/docker/volumes
