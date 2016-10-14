#!/bin/bash
apt-get update -y
echo "project.puppetagent1.com" > /etc/hostname
echo "master-ip-address project.puppetmaster.com" > /etc/hosts
echo "server=project.puppetmaster.com" > /etc/puppet/puppet.conf
apt-get install -y puppet
