#!/bin/bash

gcc -o start MyProject091123.c 1>log.txt 2>err.txt

if [ -s err.txt ]
then
	echo "Ошибка компиляции"
	cat err.txt
else
	echo "Старт программы"
	echo "Введите два числа a и b"
	./start > res.txt
	cat res.txt
fi
