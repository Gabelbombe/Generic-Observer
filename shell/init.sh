#!/bin/bash

# Generic Init script via BASH

read -p "Package  Name: " pname
read -p "Observer Name: " oname

extName="${pname}_${oname}"


extension="<?xml version='1.0' ?>\n<config>\n\t<modules>\n\t\t<${extName}>\n\t\t\t\t<active>true</active>\n\t\t\t\t<codePool>local</codePool>\n\t\t\t\t<depends>\n\t\t\t\t\t<Mage_Customer />\n\t\t\t\t</depends>\n\t\t\t</${extName}>\n\t</modules>\n</config>\n\n<!-- /app/code/etc/modules/${extName}.xml -->"

echo -e $extension