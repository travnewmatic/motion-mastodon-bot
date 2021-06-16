#!/bin/bash

if [ -n "$snapshot_interval" ]
then
	sed -i "s/snapshot_interval\ 3600/snapshot_interval\ $snapshot_interval/" /etc/motion/motion.conf
fi

exec "$@"
