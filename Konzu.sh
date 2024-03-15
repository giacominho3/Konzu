#!/bin/bash
clear
str="[???]: Swazdo-lah umano, benvenuto nel laboratorio, siediti. Io sono Konzu."

while IFS= read -r -n1 var
do
    printf '%s' "$var"
    sleep 0.015
done <<< "$str"

echo
sleep 0.3
echo

str="[Konzu]: Allora, come primo test, te devi fare uno script in sh che fa 'ste cose qua:"

while IFS= read -r -n1 var
do
    printf '%s' "$var"
    sleep 0.015
done <<< "$str"

echo
sleep 0.3
echo

str="- fai na cartella chiamata Cetus"
printf "\t"
while IFS= read -r -n1 var
do
    printf '%s' "$var"
    sleep 0.015
done <<< "$str"

echo
sleep 0.3
echo

str="- fai 10 file da 1 a 10 (tipo file1, file2,... file10)"
printf "\t"
while IFS= read -r -n1 var
do
    printf '%s' "$var"
    sleep 0.015
done <<< "$str"

echo
sleep 0.3
echo

str="- butta li 10 file dentro la cartella che hai fatto"
printf "\t"
while IFS= read -r -n1 var
do
    printf '%s' "$var"
    sleep 0.015
done <<< "$str"

echo
sleep 0.3
echo

str="[Konzu]: Prima di iniziare, ci sono un paio di regole per sto test:"

while IFS= read -r -n1 var
do
    printf '%s' "$var"
    sleep 0.015
done <<< "$str"

echo
sleep 0.3
echo

str="1. Non puoi fare i file uno per uno, devi usà un ciclo for."
printf "\t"
while IFS= read -r -n1 var
do
    printf '%s' "$var"
    sleep 0.015
done <<< "$str"

echo
sleep 0.3
echo

str="2. Fai le cose come vuoi (tipo prima fai i file e poi li butti, o li butti mentre li fai)."
printf "\t"
while IFS= read -r -n1 var
do
    printf '%s' "$var"
    sleep 0.015
done <<< "$str"

echo
sleep 0.3
echo

str="[Konzu]: Se hai problemi collo script o coi cicli, c'è na piccola documentazione che te può dare una mano."

while IFS= read -r -n1 var
do
    printf '%s' "$var"
    sleep 0.015
done <<< "$str"

echo
echo
