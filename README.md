# Clang-It

If you want to throw your computer out of the window because clang format formatted the wrong files. This program is for you !


## Regex Support

Clang-It supports regex that will be used to determine if a file should be clang formatted. To search for files matching the regex, clang-it uses ``find (1)`` .

## Usage
``./clang-it.sh <source-dir> [regex]``
### Examples
``./clang-it.sh foo "*.c"``

``./clang-it.sh foo``

``./clang-it.sh foo "ba?.c"``
