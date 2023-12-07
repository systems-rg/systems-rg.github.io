#include <stddef.h>
#include <limits.h>

size_t strlen(char * str)
{
  char *ptr ;
  unsigned long *longword_ptr;
  unsigned long longword, himagic, lomagic;
  for (ptr = str; ((unsigned long)ptr & (sizeof(unsigned long) - 1)) != 0; ++ptr)
    if (*ptr == '\0')
      return ptr-str ;
  longword_ptr = (unsigned long*)ptr ;
#if ULONG_MAX == 0xFFFFFFFFFFFFFFFF
  himagic = 0x8080808080808080L;
  lomagic = 0x0101010101010101L;
#else
  himagic = 0x80808080L;
  lomagic = 0x01010101L;
#endif
  for (;;)
  {
    longword = *longword_ptr++;
    if ((longword - lomagic) & ~longword & himagic) {
      char *cp = (char *)(longword_ptr - 1);
      if (cp[0] == 0) return cp - str ;
      if (cp[1] == 0) return cp - str + 1;
      if (cp[2] == 0) return cp - str + 2;
      if (cp[3] == 0) return cp - str + 3;
      if (cp[4] == 0) return cp - str + 4;
      if (cp[5] == 0) return cp - str + 5;
      if (cp[6] == 0) return cp - str + 6;
      if (cp[7] == 0) return cp - str + 7;
    }
  }
}
