#!/bin/bash -x

for fileName in $(ls)
do
	ext=${fileName##*\.}
	case $ext in
			java)
				echo $fileName : java source file
			;;
			0)
				echo $fileName : Object File
			;;
			sh)
				echo $fileName : Shell script file

			;;
			txt)
				echo $fileName : Text file
			;;
			*)
				echo $fileName : Not processed
			;;
		esac
done
