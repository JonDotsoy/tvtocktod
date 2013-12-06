#!/bin/sh
# Bosoleto!!
#

# echo $*;


c1="ETC TV"
c2="13C"
c4="La Red"
c5="UCV"
c9="Mega"
c11="CHV"
c13="Canal 13"

canal=""

for ln in $*
do
	case $ln in
		*)
			canal="$canal $ln"
		;;
	esac
done

case $* in
	1) canal=$c1 ;;
	2) canal=$c2 ;;
	4) canal=$c4 ;;
	5) canal=$c5 ;;
	9) canal=$c9 ;;
	11) canal=$c11 ;;
	13) canal=$c13 ;;
esac

if [ !-z $canal ]
	then
	google-chrome --app=chrome-extension://ijdncbaekoleeeddhkbnoihmmlfalmkb/popup.html
	exit
fi

google-chrome --app="chrome-extension://ijdncbaekoleeeddhkbnoihmmlfalmkb/canal/ver.html#$canal"

