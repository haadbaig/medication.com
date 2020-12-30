#include<iostream>
#include<string.h>
#include<sys/mman.h>
#include<time.h>
#include<stdlib.h>
#include<stdio.h>
#include<unistd.h>
#include<error.h>
#include<sys/types.h>
#include<sys/stat.h>
#include<fcntl.h>
#include<pthread.h>
#include<semaphore.h>
using namespace std;

int main()
{
	int size = 0;
	cin >> size;
	char argv[100] = {"\0"};
	cin >> argv;
	char *file=new char[strlen(argv)];
	int i=0;
	strcpy(file, argv);
	cout<<"File name is:\t"<<file<<endl;
	int fd;
	fd=open("carinfo.txt",O_RDWR);
	
	void * data;
	data=mmap(0,getpagesize(),PROT_READ,MAP_SHARED,fd,0);
	char * d=(char *)data;
	int s1=strlen(d)/2+1;
	int s2=strlen(d)/2+1;

}