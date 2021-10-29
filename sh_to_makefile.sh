#!/bin/bash
GREEN='\33[1;32m'
read -p "Enter the directory of the shell script: "  shscript
read -p "Enter the target directory for your Makefile: " targetdir
read -p "Enter the name of the make command you would like to invoke the script: " makeinvoke 
cd $targetdir
string=': ; $(value sh_script)'
makeinvoke2="${makeinvoke}"
makeinvoke3="${makeinvoke2} ${string}"
touch Makefile 
echo 'define sh_script =' >> Makefile
cat $shscript >> Makefile
echo 'endef' >> Makefile
echo ${makeinvoke3} >> Makefile
echo '.ONESHELL:' >> Makefile
echo -e '${GREEN}Shell script successfully converted to Makefile'

