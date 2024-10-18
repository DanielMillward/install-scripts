# Chromedriver location: https://askubuntu.com/questions/539498/where-does-chromedriver-install-to

sudo apt install unzip
sudo apt remove google-chrome-stable
sudo rm /usr/local/bin/chromedriver

wget -O /tmp/chrome.zip https://storage.googleapis.com/chrome-for-testing-public/130.0.6723.58/linux64/chrome-linux64.zip
unzip /tmp/chrome.zip -d ~/ 
rm /tmp/chrome.zip
sudo mv -f ~/chrome-linux64 /etc/alternatives/google-chrome
sudo chown root:root /etc/alternatives/google-chrome
sudo chmod 0755 /etc/alternatives/google-chrome
sudo ln -s /etc/alternatives/google-chrome /usr/bin/google-chrome

wget -O /tmp/chromedriver.zip https://storage.googleapis.com/chrome-for-testing-public/130.0.6723.58/linux64/chromedriver-linux64.zip
unzip /tmp/chromedriver.zip -d ~/ 
rm /tmp/chromedriver.zip 
sudo mv -f ~/chromedriver-linux64 /usr/local/bin/chromedriver
sudo chown root:root /usr/local/bin/chromedriver
sudo chmod 0755 /usr/local/bin/chromedriver
