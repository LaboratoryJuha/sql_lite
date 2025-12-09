#include <sqlite3.h>
#include <stdio.h>

int main() {
    printf("sqlite3 version: %s\n", sqlite3_libversion());
    return 0;
}