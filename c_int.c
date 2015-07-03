#include <stdio.h>
#include <time.h>
#include <sys/time.h>


int main( int argc, const char * argv[] )
{
	argc = argc; argv=argv;

	struct timeval aTv,bTv;
	gettimeofday( &aTv, NULL );

	int i_loop1, i_loop2, i_loop3;
	int i_counter = 0;

	for (i_loop1 = 0; i_loop1 < 10; i_loop1++)
	{
		for (i_loop2 = 0; i_loop2 < 32000; i_loop2++)
		{
			for (i_loop3 = 0; i_loop3 < 32000; i_loop3++)
			{
				i_counter++;

				if (i_counter > 50) {
					i_counter = 0;
				}
			}
			// If you want to test how the compiler optimizes that, remove the comment
			//i_counter = 0;
		}
	}

	gettimeofday( &bTv, NULL );
	printf( "                     Result: %d       %0.3f seconds\n", i_counter, 
		(bTv.tv_sec - aTv.tv_sec) + (double)(bTv.tv_usec - aTv.tv_usec)/1000000.0 );

	return 0;
}

