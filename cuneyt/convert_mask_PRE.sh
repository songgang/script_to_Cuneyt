#!/bin/bash
#$ -S /bin/bash

inputImg=$1;
outputDir=$2;
lobes=( 'LLL' 'LML' 'LUL' 'RCL' 'RLL' 'RML' 'RUL' );

C3D=/home/songgang/pkg/bin/c3d

dogtiming=`perl -e '$_="'$inputImg'"; /(.+\/)*(.+)\/(.+)\/(.+).hdr$/; print $2;'`;
pospressure=`perl -e '$_="'$inputImg'"; /(.+\/)*(.+)\/(.+)\/(.+).hdr$/; print $3;'`;
imgname=`perl -e '$_="'$inputImg'"; /(.+\/)*(.+)\/(.+)\/(.+).hdr$/; print $4;'`;
inputDir=`dirname $inputImg`;
	
dog=`perl -e'$_="'$dogtiming'"; /(.+)-(.+)/;print $1;'`;
timing=`perl -e'$_="'$dogtiming'"; /(.+)-(.+)/;print $2;'`;
	
pos=`perl -e'$_="'$pospressure'"; /(.+)-(.+)/;print $1;'`;
pressure=`perl -e'$_="'$pospressure'"; /(.+)-(.+)/;print $2;'`;


	echo "--------------------------------"
	echo -e "inputImg: \t$inputImg"
	echo -e "dog: \t$dog"
	echo -e "timing: \t$timing"
	echo -e "pos: \t$pos"
	echo -e "pressuure: \t$pressure"
	echo -e "lobes: \t${lobes[*]}"


# make output dir
subout=$outputDir/$dogtiming/$pospressure
mkdir -p $subout

# output lung mask file
outmask=$subout/$imgname-lungmask.nii.gz
:<<comment
l1=$inputDir/MaskFiles/${lobes[0]}-$imgname.hdr
l2=$inputDir/MaskFiles/${lobes[1]}-$imgname.hdr
l3=$inputDir/MaskFiles/${lobes[2]}-$imgname.hdr
l4=$inputDir/MaskFiles/${lobes[3]}-$imgname.hdr
l5=$inputDir/MaskFiles/${lobes[4]}-$imgname.hdr
l6=$inputDir/MaskFiles/${lobes[5]}-$imgname.hdr
l7=$inputDir/MaskFiles/${lobes[6]}-$imgname.hdr
comment

l1=$inputDir/MaskFiles/$imgname-${lobes[0]}.hdr
l2=$inputDir/MaskFiles/$imgname-${lobes[1]}.hdr
l3=$inputDir/MaskFiles/$imgname-${lobes[2]}.hdr
l4=$inputDir/MaskFiles/$imgname-${lobes[3]}.hdr
l5=$inputDir/MaskFiles/$imgname-${lobes[4]}.hdr
l6=$inputDir/MaskFiles/$imgname-${lobes[5]}.hdr
l7=$inputDir/MaskFiles/$imgname-${lobes[6]}.hdr


$C3D $l1 -threshold 976 976 1 0 -as A -clear $l2 -threshold 976 976 1 0 -push A -add -as A -clear $l3 -threshold 976 976 1 0 -push A -add -as A -clear $l4 -threshold 976 976 1 0 -push A -add -as A -clear $l5 -threshold 976 976 1 0 -push A -add -as A -clear $l6 -threshold 976 976 1 0 -push A -add -as A -clear $l7 -threshold 976 976 1 0 -push A -add -as A -clear -push A -threshold 1 Inf 1 0 -o $outmask

ln -s $inputImg $subout/$imgname.hdr
ln -s $(dirname $inputImg)/$(basename $inputImg .hdr).img $subout/$imgname.img
