#!/usr/bin/bash
GRE='\033[0;32m'
RED='\033[0;31m'
CYA='\033[0;36m'
NC='\033[0m' # No Color
listaplikow(){

printf ${GRE}"Pobieranie listy plików dla katalogu ";
katalog=$dane$data;
katalogtest=/home/karol/Pulpit
echo $katalog
printf ${CYA}
#dirlist=($(ls *.zip))
files=$(ls *.zip)
counter=0
for i in $files ; do
  echo $counter $i
  counter=$((counter+1))
done
echo "Wybierz numer pliku który chcesz skopiować"
read numer
echo $numer
echo ${files[@]}

}



dane="/dane/ax/dane/"
katalog_wejsciowy="/dane/ax/prod/dane/"
data=`date +%Y%m%d`
echo "Incoming=" $dane
echo "Cel=" $katalog_wejsciowy
echo "Data to:" $data "czy chcesz pobrać pliki tej daty?"
echo "T/N?"
read warunek;
echo $warunek
if [ $warunek = "T" ]
then
#echo "Pobieranie plików z daty dzisiejszej "$data;
listaplikow 
else
if [ $warunek = "N" ]
then
echo "Podaj nową datę w formacie rrrrmmdd";
read data;
echo "Nowa data to "$data;
else
echo "Nie podano wymaganego wyboru";
fi
fi


###############################################################3




#printf "I ${RED}$warunek${NC} Stack Overflow\n"
 
