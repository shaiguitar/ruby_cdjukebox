/*

  http://www.cs.swarthmore.edu/~newhall/unixhelp/howto_C_libraries.html
  gcc -Wall -c doubleme.c
  ar -cvq libdoubleme.a doubleme.o
  ar -t libdoubleme.a // don't believe me!? it's this file

  gcc -o doubleme.o -c doubleme.c -I. -L.
  gcc -shared -o libdoubleme.so  doubleme.o -lm

  gcc -o test test.c -L . -I . -l doubleme
*/

#include <doubleme.h>

double doubleme() {
  return(20000.0);
}

int main() {
  return(0);
}
