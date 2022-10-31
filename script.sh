#!/bin/bash

echo "Checking for command line tools..."
if ! xcode-select -p &> /dev/null
then
  echo "Installing command line tools..."
  xcode-select --install
fi

echo "Installing Brew..."
if ! command -v brew &> /dev/null
then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  source ~/.bash_profile
fi

echo "Updating all dependencies..."
brew upgrade

echo "Cleaning up..."
brew cleanup

echo "Installing rbenv..."
if ! command -v rbenv &> /dev/null
then
  brew install rbenv
fi

echo "Installing nvm..."
if ! command -v nvm &> /dev/null
then
  brew install nvm
fi

echo "Installing redis..."
if ! command -v nvm &> /dev/null
then
  brew install redis
  echo "Seting redis auto-start"
  ln -sfv /usr/local/opt/redis/*.plist ~/Library/LaunchAgents
fi

echo "Installing heroku cli..."
if ! command -v heroku &> /dev/null
then
  brew tap heroku/brew && brew install heroku
fi

echo "Installing fish..."
if ! command -v fish &> /dev/null
then
  brew install fish
  echo "Copying fish config..."
  cp config_files/config.fish ~/.config/fish/config.fish
fi

echo "Installing gpg..."
if ! command -v gpg &> /dev/null
then
  brew install gnupg
fi

if [ ! -d "/Applications/Postgres.app" ]
then
  echo "Installing Postgres App..."
  brew install --cask postgres-unofficial
fi

if [ ! -d "/Applications/TablePlus.app" ]
then
  echo "Installing TablePlus..."
  brew install --cask tableplus
fi

if [ ! -d "/Applications/Google Chrome.app" ]
then
  echo "Installing Chrome..."
  brew install --cask google-chrome
fi

if [ ! -d "/Applications/iTerm.app" ]
then
  echo "Installing iTerm2..."
  brew install --cask iterm2
fi

if [ ! -d "/Applications/Visual Studio Code.app" ]
then
  echo "Installing VSCode..."
  brew install --cask visual-studio-code
fi

if [ ! -d "/Applications/Docker.app" ]
then
  echo "Installing Docker..."
  brew install --cask docker
fi

if [ ! -d "/Applications/Spotify.app" ]
then
  echo "Installing Spotify..."
  brew install --cask spotify
fi

if [ ! -d "/Applications/Slack.app" ]
then
  echo "Installing Slack..."
  brew install --cask slack
fi

exit