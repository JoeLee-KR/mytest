#!/bin/bash
echo "$(date) :: $(/sbin/ifconfig awdl0 down; /sbin/ifconfig awdl0 | grep BROAD)"
