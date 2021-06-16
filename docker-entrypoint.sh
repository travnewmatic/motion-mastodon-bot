#!/bin/bash
sed -i "s/snapshot_interval\ 3600/snapshot_interval\ $interval/" /etc/motion/motion.conf
