#include <stdio.h>

int main(void){
   float y0 = 4;
   float w = 4;
   float y1 = 4;
   do {
      y0 = y1;
      y1 = (y0 + w / y0) / 2;
      printf("%f\n", y1);   
   }while (y1 * y1 - y0 > 0.001);
}
