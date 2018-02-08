#!/bin/bash


i=1
for img in `ls  ./*.jpg  ./*.jpeg`; do
		mv $img ./$i.jpeg
		i=$((i+1));
done
