#!/bin/bash

RED='\033[0;31m'
YLLW='\033[0;33m'
NC='\033[0m\n'

printf "${YLLW} **** SYSLOGINE DOCS **** ${NC}"
sleep 2

printf "${RED} **** let's create sys_docs with hugo **** ${NC}"
hugo new site sys_docs
sleep 3

printf "${RED} **** enter sys_docs site **** ${NC}"
cd sys_docs
sleep 3

printf "${RED} **** create git init **** ${NC}"
git init
sleep 3

printf "${RED} **** download docsy theme as submodule **** ${NC}"
git submodule add https://github.com/Syslogine/docsy themes/docsy
sleep 3

printf "${RED} **** add doscy as theme in config **** ${NC}"
echo "theme = 'docsy'" >> config.toml
sleep 3

printf "${RED} **** now we go to doscy theme folder **** ${NC}"
cd themes/docsy
sleep 3

printf "${RED} **** to be sure **** ${NC}"
npm install
sleep 3

printf "${RED} **** needs funding **** ${NC}"
npm fund
sleep 3

printf "${RED} **** go back to sys_docs folder **** ${NC}"
cd ../..
sleep 3

printf "${RED} **** testing time **** ${NC}"
hugo server

