#include <stdio.h>
main(){
	int n=7, m=1;
	while (n<100 || m<100) {
		n=n*2;
		m=m*3;
		printf("n=%d\t m=%d\n",n,m);
	}
	printf("Retornar n=%d\n",n);
}
