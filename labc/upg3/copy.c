#include <stdio.h>
#include <string.h>

void copy(void *from, void *to, size_t size) {
  memcpy(to, from, size);
}

main() {
  int ia[20];
  ia[0] = 1;
  ia[16] = 12;
  int ia2[20];

  int i;
  for (i = 0; i < 20; i++) {
    printf("ia i: %d, value: %d\n", i, ia[i]);
    printf("ia2 i: %d, value: %d\n", i, ia2[i]);
  }
  copy(ia, ia2, sizeof(ia));
  for (i = 0; i < 20; i++) {
    printf("ia i: %d, value: %d\n", i, ia[i]);
    printf("ia2 i: %d, value: %d\n", i, ia2[i]);
  }
}
