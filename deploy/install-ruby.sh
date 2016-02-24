# The ouput of all these installation steps is noisy. With this utility
# the progress report is nice and concise.
function install {
    echo "Installing $1..."
    shift
    apt-get -y install "$@"
}
​
echo 'Updating package information...'
apt-get -y update
echo 'Upgrading packages ...'
apt-get -y full-upgrade
echo 'Removing packages that are no longer needed...'
apt-get -y autoremove
echo 'Cleaning package information cache...'
apt-get -y autoclean
echo 'Installing apache'
apt-get -y apache2
​
install 'development tools' build-essential curl
​
install 'Git' git
​
# store fingerprint of hosts for github.com (avoids the interactive prompt
# when first connecting to github)
sudo ssh-keyscan -H github.com > /etc/ssh/ssh_known_hosts
​
echo 'Installing RVM...'
sudo -u vagrant -H bash -l -c 'gpg --keyserver hkp://keys.gnupg.net \
  --recv-keys D39DC0E3 && curl --silent -L https://get.rvm.io | bash -s stable --autolibs=enabled'
​
source /home/vagrant/.rvm/scripts/rvm
​
echo 'Installing Ruby 2.2.3...'
sudo -u vagrant -H bash -l -c '/home/vagrant/.rvm/bin/rvm install ruby-2.2.3 \
  --quiet-curl --autolibs=enabled --auto-dotfiles --binary --max-time 30 \
  && rvm alias create default 2.2.3'
​
echo 'Installing Bundler...'
sudo -u vagrant -H bash -l -c 'gem install bundler'
echo 'Installing gems'
sudo -u vagrant -H bash -l -c 'cd /vagrant && bundle update && bundle install'
echo 'Building the site to /var/www/html'
sudo -u vagrant -H bash -l -c 'cd /vagrant && bundle exec jekyll build --destination /var/www/html'

# echo 'Setting up a symlink from /vagrant/_site to apache serve directory'
# sudo -u vagrant -H bash -l -c '​rm -rf /var/www/html'
# sudo -u vagrant -H bash -l -c 'ln -s /vagrant/_site /var/www/html'

echo 'All done, carry on!'
