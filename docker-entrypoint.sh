#!/bin/bash
sed -i "s/snapshot_interval\ 0/snapshot_interval\ $interval/" /etc/motion/motion.conf
