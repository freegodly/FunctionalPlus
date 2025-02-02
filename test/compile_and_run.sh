#!/usr/bin/env bash

g++ -std=c++11 -O3 -Wall -Wextra -pedantic -Werror -o ./temp_FunctionalPlus_tests__gcc -I./../include tests.cpp
clang++-3.6 -O3 -std=c++11 -Wall -Wextra -pedantic -Werror -o ./temp_FunctionalPlus_tests__clang -I./../include tests.cpp

if [ -f ./temp_FunctionalPlus_tests__gcc ];
then
    ./temp_FunctionalPlus_tests__gcc
    rm ./temp_FunctionalPlus_tests__gcc
fi

if [ -f ./temp_FunctionalPlus_tests__clang ];
then
    ./temp_FunctionalPlus_tests__clang
    rm ./temp_FunctionalPlus_tests__clang
fi
