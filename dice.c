#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main(){
  int i, dice, one = 0, two = 0, three = 0, four = 0, five = 0 , six = 0;
  FILE *fp;

  srand((unsigned)time(NULL));
  
  if((fp = fopen("dice.txt", "w")) == NULL){
    printf("file open error!\n");
    return(-1);
  }
  
  for(i = 0; i < 12000; i++){
    dice = rand() % 6 + 1;
    fprintf(fp, "出た目は = %d\n", dice);
    printf("出た目は = %d\n", dice);
    
    if(dice == 1)
      one++;		
    
    if(dice == 2)
      two++;
    
    if(dice == 3)
      three++;
    
    if(dice == 4)
      four++;

    if(dice == 5)
      five++;

    if(dice == 6)
      six++;
  }

  fprintf(fp, "1の出た回数:%d\n", one);
  fprintf(fp, "2の出た回数:%d\n", two);
  fprintf(fp, "3の出た回数:%d\n", three);
  fprintf(fp, "4の出た回数:%d\n", four);
  fprintf(fp, "5の出た回数:%d\n", five);
  fprintf(fp, "6の出た回数:%d\n", six);
  
  fclose(fp);
  
  printf("1の出た回数:%d\n", one);
  printf("2の出た回数:%d\n", two);
  printf("3の出た回数:%d\n", three);
  printf("4の出た回数:%d\n", four);
  printf("5の出た回数:%d\n", five);
  printf("6の出た回数:%d\n", six);
  
  return 0;
}
