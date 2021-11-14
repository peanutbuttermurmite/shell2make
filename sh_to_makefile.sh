#!/bin/bash
read -p "Enter the directory of the shell script or the relative directory: "  shscript
read -p "Enter the target directory for your Makefile: " targetdir
read -p "Enter the name of the make command you would like to invoke the script: " makeinvoke 
cd $targetdir
string=': ; $(value sh_script)'
makeinvoke2="${makeinvoke}"
makeinvoke3="${makeinvoke2} ${string}"
touch Makefile 
printf 'define sh_script =' >> Makefile
cat $shscript >> Makefile
printf 'endef' >> Makefile
printf ${makeinvoke3} >> Makefile
printf '.ONESHELL:' >> Makefile
printf 'Shell script successfully converted to Makefile'

