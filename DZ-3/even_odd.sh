#!/bin/bash

# 1. Проверяем количество аргументов (должен быть строго один)
# $# — это количество переданных аргументов.
if [ "$#" -ne 1 ]; then
  echo "Please send one non negative number"
  exit 1
fi

# Сохраняем аргумент в понятную переменную
num=$1

# 2. Проверяем, что число не отрицательное
if (( num < 0 )); then
  echo "Please send one non negative number"
  exit 1
fi

# 3. Проверяем четность/нечетность с помощью оператора % (остаток от деления)
if (( num % 2 == 0 )); then
  echo "Number $num is even"
else
  echo "Number $num is odd"
fi

