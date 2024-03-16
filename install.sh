#!/bin/bash

cd $HOME

git clone https://github.com/Lucas-Winicius/password_generator_cli.git

cd $HOME/password_generator_cli

npm install

echo "alias gerar-senha='npx tsx $HOME/password_generator_cli/index.ts'" >> ~/.bashrc

source ~/.bashrc

echo "A CLI foi instalada e o alias 'gerar-senha' foi configurado."

read -p "Pressione enter tecla para fechar..."
