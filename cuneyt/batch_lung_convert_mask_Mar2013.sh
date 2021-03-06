#!/bin/bash
## -S /bin/bash

#commonScriptDir=/home/songgang/project/GermanLung/script/SongPipeline/common

srcDir=/home/songgang/project/Cuneyt/Jan2012/input_Mar13_2013
dstDir=/home/songgang/project/Cuneyt/Jan2012/output_Mar13_2013

currentDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )";
echo $currentDir;


pathList="
Kirby-PRE/Prone-10cm/Kirby-PRE-Prone-10cm
Kirby-PRE/Prone-30cm/Kirby-PRE-Prone-30cm
Kirby-PRE/Supine-10cm/Kirby-PRE-Supine-10cm
Kirby-PRE/Supine-30cm/Kirby-PRE-Supine-30cm

Irving-PRE/Prone-10cm/Irving-PRE-Prone-10cm
Irving-PRE/Prone-30cm/Irving-PRE-Prone-30cm
Irving-PRE/Supine-10cm/Irving-PRE-Supine-10cm
Irving-PRE/Supine-30cm/Irving-PRE-Supine-30cm
"
:<<djfkdjfkdjfkdfjdsd
pathList="
Hondo-POST/Prone-10cm/Hondo-POST-Prone-10cm
Hondo-POST/Prone-30cm/Hondo-POST-Prone-30cm
Hondo-POST/Supine-10cm/Hondo-POST-Supine-10cm
Hondo-POST/Supine-30cm/Hondo-POST-Supine-30cm
Hondo-PRE/Prone-10cm/Hondo-PRE-Prone-10cm
Hondo-PRE/Prone-30cm/Hondo-PRE-Prone-30cm
Hondo-PRE/Supine-10cm/Hondo-PRE-Supine-10cm
Hondo-PRE/Supine-30cm/Hondo-PRE-Supine-30cm

Irving-POST/Prone-10cm/Irving-POST-Prone-10cm
Irving-POST/Prone-30cm/Irving-POST-Prone-30cm
Irving-POST/Supine-10cm/Irving-POST-Supine-10cm
Irving-POST/Supine-30cm/Irving-POST-Supine-30cm
Irving-PRE/Prone-10cm/Irving-PRE-Prone-10cm
Irving-PRE/Prone-30cm/Irving-PRE-Prone-30cm
Irving-PRE/Supine-10cm/Irving-PRE-Supine-10cm
Irving-PRE/Supine-30cm/Irving-PRE-Supine-30cm

Jasper-POST/Prone-10cm/Jasper-POST-Prone-10cm
Jasper-POST/Prone-30cm/Jasper-POST-Prone-30cm
Jasper-POST/Supine-10cm/Jasper-POST-Supine-10cm
Jasper-POST/Supine-30cm/Jasper-POST-Supine-30cm
Jasper-PRE/Prone-10cm/Jasper-PRE-Prone-10cm
Jasper-PRE/Prone-30cm/Jasper-PRE-Prone-30cm
Jasper-PRE/Supine-10cm/Jasper-PRE-Supine-10cm
Jasper-PRE/Supine-30cm/Jasper-PRE-Supine-30cm

Kirby-POST/Prone-10cm/Kirby-POST-Prone-10cm
Kirby-POST/Prone-30cm/Kirby-POST-Prone-30cm
Kirby-POST/Supine-10cm/Kirby-POST-Supine-10cm
Kirby-POST/Supine-30cm/Kirby-POST-Supine-30cm
Kirby-PRE/Prone-10cm/Kirby-PRE-Prone-10cm
Kirby-PRE/Prone-30cm/Kirby-PRE-Prone-30cm
Kirby-PRE/Supine-10cm/Kirby-PRE-Supine-10cm
Kirby-PRE/Supine-30cm/Kirby-PRE-Supine-30cm
"
djfkdjfkdjfkdfjdsd

:<<haha
pathList="
ALVIN-POST/PRONE-10cm/ALVIN-POST-PRONE-10cm
ALVIN-POST/PRONE-30cm/ALVIN-POST-PRONE-30cm
ALVIN-POST/SUPINE-10cm/ALVIN-POST-SUPINE-10cm
ALVIN-POST/SUPINE-30cm/ALVIN-POST-SUPINE-30cm
ALVIN-PRE/SUPINE-10cm/ALVIN-PRE-SUPINE-10cm
ALVIN-PRE/SUPINE-30cm/ALVIN-PRE-SUPINE-30cm

BARTLETT-POST/PRONE-10cm/BARTLETT-POST-PRONE-10cm
BARTLETT-POST/PRONE-30cm/BARTLETT-POST-PRONE-30cm
BARTLETT-POST/SUPINE-10cm/BARTLETT-POST-SUPINE-10cm
BARTLETT-POST/SUPINE-30cm/BARTLETT-POST-SUPINE-30cm
BARTLETT-PRE/SUPINE-10cm/BARTLETT-PRE-SUPINE-10cm
BARTLETT-PRE/SUPINE-30cm/BARTLETT-PRE-SUPINE-30cm

CLYDE-POST/PRONE-10cm/CLYDE-POST-PRONE-10cm
CLYDE-POST/PRONE-30cm/CLYDE-POST-PRONE-30cm
CLYDE-POST/SUPINE-10cm/CLYDE-POST-SUPINE-10cm
CLYDE-POST/SUPINE-30cm/CLYDE-POST-SUPINE-30cm
CLYDE-PRE/SUPINE-10cm/CLYDE-PRE-SUPINE-10cm
CLYDE-PRE/SUPINE-30cm/CLYDE-PRE-SUPINE-30cm

DALLAS-POST/PRONE-10cm/DALLAS-POST-PRONE-10cm
DALLAS-POST/PRONE-30cm/DALLAS-POST-PRONE-30cm
DALLAS-POST/SUPINE-10cm/DALLAS-POST-SUPINE-10cm
DALLAS-POST/SUPINE-30cm/DALLAS-POST-SUPINE-30cm
DALLAS-PRE/SUPINE-10cm/DALLAS-PRE-SUPINE-10cm
DALLAS-PRE/SUPINE-30cm/DALLAS-PRE-SUPINE-30cm

EVANT-POST/PRONE-10cm/EVANT-POST-PRONE-10cm
EVANT-POST/PRONE-30cm/EVANT-POST-PRONE-30cm
EVANT-POST/SUPINE-10cm/EVANT-POST-SUPINE-10cm
EVANT-POST/SUPINE-30cm/EVANT-POST-SUPINE-30cm
EVANT-PRE/SUPINE-10cm/EVANT-PRE-SUPINE-10cm
EVANT-PRE/SUPINE-30cm/EVANT-PRE-SUPINE-30cm

FLINT-POST/PRONE-10cm/FLINT-POST-PRONE-10cm
FLINT-POST/PRONE-30cm/FLINT-POST-PRONE-30cm
FLINT-POST/SUPINE-10cm/FLINT-POST-SUPINE-10cm
FLINT-POST/SUPINE-30cm/FLINT-POST-SUPINE-30cm
FLINT-PRE/SUPINE-10cm/FLINT-PRE-SUPINE-10cm
FLINT-PRE/SUPINE-30cm/FLINT-PRE-SUPINE-30cm

GILMER-POST/PRONE-10cm/GILMER-POST-PRONE-10cm
GILMER-POST/PRONE-30cm/GILMER-POST-PRONE-30cm
GILMER-POST/SUPINE-10cm/GILMER-POST-SUPINE-10cm
GILMER-POST/SUPINE-30cm/GILMER-POST-SUPINE-30cm
GILMER-PRE/SUPINE-10cm/GILMER-PRE-SUPINE-10cm
GILMER-PRE/SUPINE-30cm/GILMER-PRE-SUPINE-30cm

"
haha


prelobes=( 'LLL' 'LML' 'LUL' 'RCL' 'RLL' 'RML' 'RUL' )
postlobes=( 'LLL' 'LML' 'LUL' );


pathList=( ${pathList} ) # convert to array from string
nbPath=${#pathList[@]} # get number of elements in array

echo "Total $nbPath files"

for (( i=0; i<nbPath; i++ )); do
	pathA=${pathList[i]};

	dogtiming=`perl -e '$_="'$pathA'"; /(.+)\/(.+)\/(.+)/; print $1;'`;
	pospressure=`perl -e '$_="'$pathA'"; /(.+)\/(.+)\/(.+)/; print $2;'`;
	imgname=`perl -e '$_="'$pathA'"; /(.+)\/(.+)\/(.+)/; print $3;'`;
	
	dog=`perl -e'$_="'$dogtiming'"; /(.+)-(.+)/;print $1;'`;
	timing=`perl -e'$_="'$dogtiming'"; /(.+)-(.+)/;print $2;'`;
	
	pos=`perl -e'$_="'$pospressure'"; /(.+)-(.+)/;print $1;'`;
	pressure=`perl -e'$_="'$pospressure'"; /(.+)-(.+)/;print $2;'`;
	
	# verify names
	imgnameA="$dog-$timing-$pos-$pressure";
	if [ $imgname != $imgnameA ];
	then
		echo "!!!!!!!!!!!!!! inconsistent file names: ";
		echo "   path: $pathA";
		echo "   imagname as substring from path: $imgname";
		echo "   imgname constructed from path: $imgnameA";
	fi;
	
	if [ ! -f $srcDir/${pathA}.hdr ];
	then
		echo "!!!!!!!!!!!!!!!!!!!!! file not exist: $srcDir/${pathA}.hdr";
		break;
	fi;
	
	
	if [ $timing == 'PRE' ];
	then
		lobes=( ${prelobes[*]} );
		# qsub -pe serial 2 -e $dstDir -o $dstDir -j y $currentDir/convert_mask_PRE.sh $srcDir/${pathA}.hdr $dstDir
		. $currentDir/convert_mask_PRE.sh $srcDir/${pathA}.hdr $dstDir
	elif [ $timing == 'POST' ];
	then
		lobes=( ${postlobes[*]} );
		# qsub -pe serial 2 -e $dstDir -o $dstDir -j y $currentDir/convert_mask_POST.sh $srcDir/${pathA}.hdr $dstDir
		. $currentDir/convert_mask_POST.sh $srcDir/${pathA}.hdr $dstDir
	else
		echo "!!!!!!!! wrong timing:? $timing";
	fi;

	echo "--------------------------------"
	echo -e "pathA: \t$pathA"
	echo -e "dog: \t$dog"
	echo -e "timing: \t$timing"
	echo -e "pos: \t$pos"
	echo -e "pressuure: \t$pressure"
	echo -e "lobes: \t${lobes[*]}"
	
	# break;
	
done;
