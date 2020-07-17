#!/bin/zsh

#this is a script that produces fib numbers and saves them to memory

#memfile check/creation

memfile=fibbotmemoryfilethatholdsthenumbers

memcheck () {
if test -f "$memfile"; then
	    echo "Working from existing memory file."; else
	    echo "Creating memory file in this directory."
	    touch $memfile
	    echo "##Fibbot memory file
0
1" >> $memfile
fi
necessarymath
}


#i am stuc here

necessarymath () {
a=`tail -2 $memfile | head -1`
b=`tail -1 $memfile | head -1`
sum=`expr $a + $b`

if (($sum < 1000)); then
	echo $sum
	echo $sum >> $memfile
	necessarymath; else 
	echo "Done!"
fi
}

memcheck
