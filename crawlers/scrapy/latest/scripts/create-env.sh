#!/bin/sh

echo 'Creating user: scrapy ...'
adduser --disabled-password --gecos '' --uid 1000 scrapy 
adduser scrapy sudo
echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
chown -R scrapy:scrapy /data/project
# sudo -u scrapy /bin/bash
exec su - scrapy

