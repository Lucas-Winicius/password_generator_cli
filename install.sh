#!/bin/bash

cd $HOME

git clone https://github.com/Lucas-Winicius/password_generator_cli.git

cd $HOME/password_generator_cli

npm install

echo "alias gpass='npx tsx $HOME/password_generator_cli/index.ts'" >> ~/.bashrc

source ~/.bashrc

echo "The CLI has been installed and the 'gpass' alias has been configured."

read -p "Press enter key to close..."
