#!/usr/bin/env bash
cd "/vagrant"
git clone https://github.com/BeSublime/beaver.git /home/vagrant/beaver

#remove the git directory to prevent pushing from the wrong repo
sudo rm -rf /home/vagrant/beaver/.git

git clone https://github.com/BeSublime/beaver.git && cd beaver && rm -rf .meteor && mkdir .meteor/
sudo mount --bind /home/vagrant/beaver/.meteor/ /vagrant/beaver/.meteor/
echo "sudo mount --bind /home/vagrant/beaver/.meteor/ /vagrant/beaver/.meteor/ && cd /vagrant" >> /home/vagrant/.bashrc