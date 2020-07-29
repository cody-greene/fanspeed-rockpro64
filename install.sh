#!/bin/sh
mkdir -p /usr/local/bin /usr/local/systemd/system
cp fanspeed /usr/local/bin/
cp fanspeed.service fanspeed.timer /usr/local/systemd/system/
