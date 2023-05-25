################################################################################
# File: macbook_dev_setup_basic.sh
# Author: Jim Lee
# Updated: 5/25/23
# Description: Basic Macbook Developer Setup for fresh macOS
################################################################################

#!/bin/bash

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/jimlee/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install brew cask completion
brew install brew-cask-completion

# Install wget
brew install wget

# Install Visual Studio Code
brew install --cask visual-studio-code

# Install Node Version Manager (nvm)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

# Install Docker
brew install docker

# Install Docker Compose
brew install docker-compose

# Install Kubernetes CLI
brew install kubectl

# Install Canonical Multipass
brew install --cask multipass

# Install Miniconda
brew install --cask miniconda
conda config --set auto_activate_base false

# Install devtoys
brew install devtoys --cask

# Setup Sublime
ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl

# Install AWS CLI
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
sudo installer -pkg AWSCLIV2.pkg -target /

# Install Azure CLI
brew install azure-cli

# Install GCP CLI
wget https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-430.0.0-darwin-arm.tar.gz
tar -xvzf google-cloud-cli-430.0.0-darwin-arm.tar.gz 
./google-cloud-sdk/install.sh
./google-cloud-sdk/bin/gcloud init

# Install Terraform
brew tap hashicorp/tap
brew install hashicorp/tap/terraform