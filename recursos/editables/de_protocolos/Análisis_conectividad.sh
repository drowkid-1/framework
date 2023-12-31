#!/bin/bash
a="$b\033[1;33m"
g="${b}\033[1;30m"
v='\033[1;32m'
b='\033[0m'
b1="$b\033[1;37m"
r="${b}\033[1;31m"
r1="$b\033[31m"
A="${b}\033[1;34m[*] \033[0m"
trap Adios INT
Adios() {
if [ -e Anonymous.sh ]; then
rm Anonymous.sh
fi
if [ -e JOSE.py ]; then
rm JOSE.py
fi
if [ -e .Zpt ]; then
rm .Zpt
fi
if [ -e .Zpt1 ]; then
rm .Zpt1
fi
exit
}
if [ ! -e $PREFIX/bin/ofus ]; then
chmod 777 ~/ofusca/ofus
cp  ofus $PREFIX/bin
fi
ofusca_python2() {
if [ -e $Nombre ]; then
rm -rf $Nombre
fi
echo "#!/bin/python2" >> $Nombre
base64 $file > JOSE.py
Zpt=$(cat JOSE.py)
echo "import base64" >> $Nombre
echo 'DrowKid = """'$Zpt'"""' >> $Nombre
echo "eval(compile(base64.b64decode(DrowKid),'','exec'))" >> $Nombre
if [ -e JOSE.py ]; then
rm JOSE.py
fi
chmod 700 $Nombre
sleep 1
exit
}
ofusca_gzip() {
if [ -e $Nombre ]; then
rm -rf $Nombre
fi
gzip -n -k $file
echo "#!/bin/bash" >> $Nombre
echo 'source <(gzip -c -d  <(tail -n+"$((LINENO + 2))" "$BASH_SOURCE"));' >> $Nombre
echo 'status="$?"; return "$status" 2> /dev/null || exit "$status"' >> $Nombre
cat $file.gz >> $Nombre
rm $file.gz
chmod +x $Nombre
}
ofusca_base64() {
if [ -e $Nombre ]; then
rm -rf $Nombre
fi
echo "#!/bin/bash" >> $Nombre
echo 'DrowKid=$(mktemp)' >> $Nombre
echo 'base64 -d  >${DrowKid}<<DIXIE' >> $Nombre
echo "$(base64 $file)" >> $Nombre
echo "DIXIE" >> $Nombre
echo 'source ${DrowKid}' >> $Nombre
echo 'rm -rf ${DrowKid}' >> $Nombre
chmod +x $Nombre
sleep 1
}
ofusca_base32() {
if [ -e $Nombre ]; then
rm -rf $Nombre
fi
echo "#!/bin/bash" >> $Nombre
echo 'DrowKid=$(mktemp)' >> $Nombre
echo 'base32 -d  >${DrowKid}<<DIXIE' >> $Nombre
echo "$(base32 $file)" >> $Nombre
echo "DIXIE" >> $Nombre
echo 'source ${DrowKid}' >> $Nombre
echo 'rm -rf ${DrowKid}' >> $Nombre
chmod +x $Nombre
sleep 1
}
ofusca_base2() {
if [ -e $Nombre ]; then
rm -rf $Nombre
fi
echo "#!/bin/bash" >> $Nombre
echo 'DrowKid=$(mktemp)' >> $Nombre
echo 'basenc --base2msbf -d  >${DrowKid}<<DIXIE' >> $Nombre
echo "$(basenc --base2msbf $file)" >> $Nombre
echo "DIXIE" >> $Nombre
echo 'source ${DrowKid}' >> $Nombre
echo 'rm -rf ${DrowKid}' >> $Nombre
chmod +x $Nombre
}
ofusca_base16() {
if [ -e $Nombre ]; then
rm -rf $Nombre
fi
echo "#!/bin/bash" >> $Nombre
echo 'DrowKid=$(mktemp)' >> $Nombre
echo 'basenc --base16 -d  >${DrowKid}<<DIXIE' >> $Nombre
echo "$(basenc --base16 $file)" >> $Nombre
echo "DrowKid" >> $Nombre
echo 'source ${DrowKid}' >> $Nombre
echo 'rm -rf ${DrowKid}' >> $Nombre
chmod +x $Nombre
sleep 1
}
ofusca_bin() {
randm1=$(cat /dev/urandom | tr -dc 'A-Za-z' | fold -w 100 | head -n 1)
randm2=$(cat /dev/urandom | tr -dc 'A-Za-z' | fold -w 100 | head -n 1)
randm3=$(cat /dev/urandom | tr -dc 'A-Za-z' | fold -w 100 | head -n 1)
randm4=$(cat /dev/urandom | tr -dc 'A-Za-z' | fold -w 100 | head -n 1)
randm5=$(cat /dev/urandom | tr -dc 'A-Za-z' | fold -w 100 | head -n 1)
randm6=$(cat /dev/urandom | tr -dc 'A-Za-z' | fold -w 100 | head -n 1)
randm7=$(cat /dev/urandom | tr -dc 'A-Za-z' | fold -w 100 | head -n 1)
randm8=$(cat /dev/urandom | tr -dc 'A-Za-z' | fold -w 100 | head -n 1)
randm9=$(cat /dev/urandom | tr -dc 'A-Za-z' | fold -w 100 | head -n 1)
randm10=$(cat /dev/urandom | tr -dc 'A-Za-z' | fold -w 100 | head -n 1)
randm11=$(cat /dev/urandom | tr -dc 'A-Za-z' | fold -w 100 | head -n 1)
randm12=$(cat /dev/urandom | tr -dc 'A-Za-z' | fold -w 100 | head -n 1)
randm13=$(cat /dev/urandom | tr -dc 'A-Za-z' | fold -w 100 | head -n 1)
randm14=$(cat /dev/urandom | tr -dc 'A-Za-z' | fold -w 100 | head -n 1)
randm15=$(cat /dev/urandom | tr -dc 'A-Za-z' | fold -w 100 | head -n 1)
randm16=$(cat /dev/urandom | tr -dc 'A-Za-z' | fold -w 100 | head -n 1)
randm17=$(cat /dev/urandom | tr -dc 'A-Za-z' | fold -w 100 | head -n 1)
randm18=$(cat /dev/urandom | tr -dc 'A-Za-z' | fold -w 100 | head -n 1)
randm19=$(cat /dev/urandom | tr -dc 'A-Za-z' | fold -w 100 | head -n 1)
randm20=$(cat /dev/urandom | tr -dc 'A-Za-z' | fold -w 100 | head -n 1)
randm21=$(cat /dev/urandom | tr -dc 'A-Za-z' | fold -w 100 | head -n 1)
randm22=$(cat /dev/urandom | tr -dc 'A-Za-z' | fold -w 100 | head -n 1)
randm23=$(cat /dev/urandom | tr -dc 'A-Za-z' | fold -w 100 | head -n 1)
randm24=$(cat /dev/urandom | tr -dc 'A-Za-z' | fold -w 100 | head -n 1)
randm25=$(cat /dev/urandom | tr -dc 'A-Za-z' | fold -w 100 | head -n 1)
randm26=$(cat /dev/urandom | tr -dc 'A-Za-z' | fold -w 100 | head -n 1)
randm27=$(cat /dev/urandom | tr -dc 'A-Za-z' | fold -w 100 | head -n 1)
randm28=$(cat /dev/urandom | tr -dc 'A-Za-z' | fold -w 100 | head -n 1)
randm29=$(cat /dev/urandom | tr -dc 'A-Za-z' | fold -w 100 | head -n 1)
randm30=$(cat /dev/urandom | tr -dc 'A-Za-z' | fold -w 100 | head -n 1)
randm31=$(cat /dev/urandom | tr -dc 'A-Za-z' | fold -w 100 | head -n 1)
randm32=$(cat /dev/urandom | tr -dc 'A-Za-z' | fold -w 100 | head -n 1)
	anu=$(cat $file | base64 | tr -d '
' )
	anu=$(echo "$anu" | rev)
	nasa="$randm1=\"$randm2\";$randm3=\"$randm4\";$randm5=\"ch\";$randm6=\"4\";$randm7=\"\";$randm9=\"$randm10\";$randm11=\" $anu | r\";$randm12=\"$randm13\";$randm14=\"\";$randm15=\"as\";$randm16=\"$randm17\";$randm18=\"$randm19\";$randm20=\"o\";$randm21=\"6\";$randm22=\"$randm23\";$randm24=\" -d\";$randm25=\"$randm26\";$randm27=\"\";$randm28=\"b\";$randm29=\"e\";$randm30=\"v |\";Tx="Eds";$randm31=\"\""
de=''"$randm32"'=$(eval '"\"\$$randm14\$$randm29\$$randm5\$$randm7\$$randm20\$$randm11\$$randm29\$$randm30\$$randm14\$$randm28\$$randm31\$$randm15\$$randm29\$$randm21\$$randm7\$$randm6\$$randm24\$$randm31\""')'
zc='eval '"\"\$$randm27\$$randm32\$$randm14\$$randm7\""''
if [ -e $Nombre ]; then
rm -rf $Nombre
fi
echo "#!/bin/bash" >> $Nombre
printf "$nasa;$de;$zc" >> $Nombre
chmod +x $Nombre
}
ofusca_php() {
nk() {
curl -s 'http://localhost:4455' > .Zpt1
case $(cat .Zpt1) in
"")
nk
esac
}
if [ -e $Nombre.php ]; then
rm -rf $Nombre.php
fi
nn='$txt='
nn1='$txt'
cat $file > .Zpt
sed -i "s/<?php/<?php\n$nn '/" .Zpt
sed -i "s/?>/';\necho base64_encode($nn1);\n?>/" .Zpt
php -S localhost:4455 .Zpt > /dev/null 2>&1 &
nk
echo "<?php" >> $Nombre
printf 'eval("eval(base64_decode(' >> $Nombre
printf "'$(cat .Zpt1)" >> $Nombre
printf "'));" >> $Nombre
printf '");\n' >> $Nombre
echo "?>" >> $Nombre
chmod +x $Nombre
checkphp=$(ps aux | grep -o "php" | head -n1)
if [[ $checkphp == *'php'* ]]; then
pkill -f -2 php > /dev/null 2>&1
killall -2 php > /dev/null 2>&1
fi
}
ofusca_shc() {
shc -v -r -f $file -o $Nombre &>> /dev/null
if [ -e $file.x.c ]; then
rm $file.x.c
fi
}
ayuda() {
echo -e "
      ${r}Ofuscacion En Programacion bash:
$v __________________________________________
$v|$b ofusca -r ejemplo.sh -n Ejemplo -base64 $v |
$v ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯$b
$v __________________________________________
$v|$b ofusca -r ejemplo.sh -n Ejemplo -base2  $v |
$v ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯$b
$v __________________________________________
$v|$b ofusca -r ejemplo.sh -n Ejemplo -base32 $v |
$v ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯$b
$v __________________________________________
$v|$b ofusca -r ejemplo.sh -n Ejemplo -base16 $v |
$v ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯$b
$v __________________________________________
$v|$b ofusca -r ejemplo.sh -n Ejemplo -eval $v   |
$v ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯$b
$v __________________________________________
$v|$b ofusca -r ejemplo.sh -n Ejemplo -shc  $v   |
$v ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯$b
$v __________________________________________
$v|$b ofusca -r ejemplo.sh -n Ejemplo -gzip $v   |
$v ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯$b
     ${r}Ofuscacion De Programacion Python:
$v __________________________________________
$v|$b ofusca -r ejemplo.py -n Ejemplo -python2$v |
$v ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯$b
	${r}Ofuscacion En Programacion Php:
$v __________________________________________
$v|$b ofusca -r ejemplo.php -n Ejemplo -php$v    |
$v ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯$b"
}
verifica_ruta() {
if [ ! -e $file ]; then
echo -e "${b}ofusca: $file: No existe tal archivo."
exit 1
fi
}
verifica_nombre() {
if [ -e $Nombre ]; then
echo -e "${b}ofusca: $Nombre: Nuevo nombre ya existe."
exit 1
fi
}
if [ ! -z $1 ]||[ ! -z $2 ]||[ ! -z $3 ]||[ ! -z $4 ]||[ ! -z $5 ]; then
case $1 in
--file|-r)
;;
--version|-v)
echo -e "$b1
 ▒█████    █████▒█    ██   ██████  ▄████▄   ▄▄▄
▒██▒  ██▒▓██   ▒ ██  ▓██▒▒██    ▒ ▒██▀ ▀█  ▒████▄
▒██░  ██▒▒████ ░▓██  ▒██░░ ▓██▄   ▒▓█    ▄ ▒██  ▀█▄
▒██   ██░░▓█▒  ░▓▓█  ░██░  ▒   ██▒▒▓▓▄ ▄██▒░██▄▄▄▄██
░ ████▓▒░░▒█░   ▒▒█████▓ ▒██████▒▒▒ ▓███▀ ░ ▓█   ▓██▒
░ ▒░▒░▒░  ▒ ░   ░▒▓▒ ▒ ▒ ▒ ▒▓▒ ▒ ░░ ░▒ ▒  ░ ▒▒   ▓▒█░
  ░ ▒ ▒░  ░     ░░▒░ ░ ░ ░ ░▒  ░ ░  ░  ▒     ▒   ▒▒ ░
░ ░ ░ ▒   ░ ░    ░░░ ░ ░ ░  ░  ░  ░          ░   ▒
    ░ ░            ░           ░  ░ ░            ░  ░
                                  ░"
printf '\033]2;ofusca\a'
echo -e "${b}ofusca v3.0$b"
exit
;;
--help|-h|?)
echo -e "
$v   __________________        _____________     _____________________
$v  |${b} Archivo A Ofuscar$v|      | ${b}Nuevo Nombre${v}|   |${b}Formato De Ofuscacion$v|
$v   ¯¯¯¯¯¯¯¯|¯¯¯¯¯¯¯¯¯        ¯¯¯¯¯|¯¯¯¯¯¯¯     ¯¯¯¯¯¯¯|¯¯¯¯¯¯¯¯¯¯¯¯¯
 __________|______________________|___________________|_______
|$b  ofusca$r1 -r$b (Archivo A Ofuscar)$r1 -n$b (Nuevo Nombre) ${r1}-base64  ${v}  |
 ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯$b
 Pruebe$b1 'ofusca -o'$b para ofuscaciones.
 Pruebe$b1 'ofusca -d'$b para desofuscaciones.\n
Otras opciones:
 -o, --ofusca   Listado de ofuscaciones disponibles con ejemplo.
 -r, --file     Despues de esta Variable va el archivo a ofuscar.
 -n, --newname  Despues de esta Variable va el nuevo nombre
                del archivo.
 -h, --help     Muestra este menú de ayuda.
 -v, --version  Informa la versión actual de la herramienta (ofusca).

Por favor, informe cualquier error a <https://t.me/DrowKid>."
exit
;;
--ofusca|-o)
ayuda
exit
;;
*)
nn=$(echo "$1" |tr -d '-')
case $1 in
"-")
echo -e "${b}ofusca: Variable de nuevo nombre no válida -- '-'"
echo "Pruebe 'ofusca --help' para obtener más información."
exit 1
;;
*)
echo -e "${b}ofusca: Primera variable no válida -- '$nn'"
echo "Pruebe 'ofusca --help' para obtener más información."
exit 1
;;
esac
esac
for file in $2; do
verifica_ruta
done
case $2 in
"")
echo -e "${b}ofusca: Archivo a ofusca no definido"
echo "Pruebe 'ofusca --help' para obtener más información."
exit 1
esac
case $3 in
--newname|-n)
;;
*)
case $3 in
"")
echo -e "${b}ofusca: Variable de nuevo nombre no definida"
echo "Pruebe 'ofusca --help' para obtener más información."
exit 1
;;
"-")
echo -e "${b}ofusca: Variable de nuevo nombre no válida -- '$1'"
echo "Pruebe 'ofusca --help' para obtener más información."
exit 1
;;
*)
nn=$(echo "$3" |tr -d '-')
echo -e "${b}ofusca: Variable de nuevo nombre no válida -- '$nn'"
echo "Pruebe 'ofusca --help' para obtener más información."
exit 1
;;
esac
esac
for Nombre in $4; do
ls &>> /dev/null
done
case $4 in
"")
echo -e "${b}ofusca: Nuevo nombre del archivo a ofuscar no definido"
echo "Pruebe 'ofusca --help' para obtener más información."
exit 1
esac
case $5 in
"-gzip")
verifica_ruta
verifica_nombre
sleep 1
ofusca_gzip
exit
;;
"-base64")
verifica_ruta
verifica_nombre
ofusca_base64
exit
;;
"-python2")
verifica_ruta
verifica_nombre
ofusca_python2
exit
;;
"-base2")
verifica_ruta
verifica_nombre
sleep 1
ofusca_base2
exit
;;
"-eval")
verifica_ruta
verifica_nombre
sleep 1
ofusca_bin
exit
;;
"-php")
case $(command -v php) in
"")
case $(ping -c 1 -q www.google.com >&/dev/null; echo $?) in
0)
echo -e "${A}Instalando Dependencias..."
sleep 0.8
pkg install -y php
ofusca -r $file -n $Nombre -php
;;
*)
echo -e "$r[-]\033[0m  Esta Función Necesita Conexion A Internet."
exit
esac
esac
verifica_ruta
verifica_nombre
ofusca_php
exit
;;
"-base32")
verifica_ruta
verifica_nombre
ofusca_base32
exit
;;
"-base16")
verifica_ruta
verifica_nombre
ofusca_base16
exit
;;
"-shc")
case $(command -v shc) in
"")
case $(ping -c 1 -q www.google.com >&/dev/null; echo $?) in
0)
echo -e "${A}Instalando Dependencias..."
sleep 0.8
pkg install -y shc
ofusca -r $file -n $Nombre -shc
;;
*)
echo -e "$r[-]\033[0m  Esta Función Necesita Conexion A Internet."
exit
esac
esac
verifica_ruta
verifica_nombre
ofusca_shc
;;
*)
case $5 in
"")
echo -e "${b}ofusca: Falta formato de ofuscación/desofuscación"
echo "Pruebe 'ofusca -o' para ofuscar o 'ofusca -d' para desofuscar."
exit
;;
"-")
echo -e "${b}ofusca: formato de ofuscación/desofuscación no válida -- '-'"
echo "Pruebe 'ofusca -o' para ofuscar o 'ofusca -d' para desofuscar."
exit
;;
*)
nn=$(echo "$5" |tr -d '-')
echo -e "${b}ofusca: formato de ofuscación/desofuscación no válida -- '$nn'"
echo "Pruebe 'ofusca -o' para ofuscar o 'ofusca -d' para desofuscar."
exit
;;
esac
;;
esac
else
echo "ofusca: Tipos de codificación faltantes"
echo "Pruebe 'ofusca --help' para obtener más información."
fi
