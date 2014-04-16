# Memcached
#
# VERSION       1.0

# dotCloud image
from ubuntu
MAINTAINER Antoine R. Dumont, ardumont@dotcloud.com

# Update to the latest packages
run echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
run apt-get update

# Install memcached
run apt-get install -y memcached