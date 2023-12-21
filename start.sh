#!/bin/bash

name=Test
password=Test1234

echo "Доступ к программе"
echo "Введите имя пользователя:"
read u_name
echo "Введите пароль:"
read u_pass

if [[ "$u_name" != "$name" ]] || [[ "$u_pass" != "$password" ]];
	then
	echo "Ошибка логина или пароля"
else
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
fi
