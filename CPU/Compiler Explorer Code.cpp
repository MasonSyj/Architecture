// Type your code here, or load an example.

int main(void){
    int x = 3;
    int y = 4;
    int z = x + y;
    return 0;
}


int if_int(int x, int y){
   if(x ==y){x += y;}
   return x;
}

int if_char(char x, char y){
   if(x ==y){x = 'a';}
   return x;
}

char if_else (char a ,char b){
   if( a == 'a' ) {
      a++;
   } else {
      b++;
   }
   return a+b;
}

int for_loop (int a ,int b) {
   int c =0;
   for( int i = a; i < b; i++ ){
       c++;
   }
   return c;
}

int While_a_plus_plus (int a ,int b ,int c) {
   while( a < c) {
      b = a++ + b;
   }
   return b;
}

int While_plus_plus_a (int a ,int b,int c) {
   while( a < c) {
      b = ++a + b;
   }
   return b;
}

int do_while (int a ,int b) {
   do {
   a = a + 1;
   } while( a < b );
   return a;
}