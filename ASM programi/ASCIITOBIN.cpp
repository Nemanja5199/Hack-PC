# include <stdio.h>
# include <stdlib.h>
# include <string.h>

typedef struct _FileData
{
int a;
double b;
char dataStr[56];
 }FileData;


int main()
{
// open read file   
FILE * infile=fopen("output.txt", "r");
if(infile==NULL)
{
    printf("Error opening file");
    exit(1);
}

// open write file
FILE * outfile = fopen("out_file.txt","wb");
if( outfile==NULL)
{
    printf("Error writting on file");
    exit(1);
}

FileData input; // pointer for read file
FileData output; // pointer for write file

while( fscanf(infile,"%d %lf %[^\n]s",&input.a,&input.b,&input.dataStr)==3)
{
    /*printf("%d\n",input.a);
    printf("%.3lf\n",input.b);
    printf("%s\n",input.dataStr);*/
    //fprintf(outfile,"%d\n %.3lf\n %s\n",input.a,input.b,input.dataStr);
    fwrite(&output,sizeof(FileData),1,outfile);


}
fclose(infile);
fclose(outfile);
return 0;
   }
