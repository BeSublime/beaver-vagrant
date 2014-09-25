#!/usr/bin/env bash

# Replace all instances of "mymeteorapp" with your app's name

cd "/vagrant"
meteor create /home/vagrant/mymeteorapp
meteor create mymeteorapp && cd mymeteorapp && rm -rf .meteor && mkdir .meteor/
sudo mount --bind /home/vagrant/mymeteorapp/.meteor/ /vagrant/mymeteorapp/.meteor/
echo "sudo mount --bind /home/vagrant/mymeteorapp/.meteor/ /vagrant/mymeteorapp/.meteor/ && cd /vagrant" >> /home/vagrant/.bashrc