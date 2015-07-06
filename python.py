import time

s_unixtime_start = time.time( )

i_counter = 0

# From 0 to 31999
for i_loop1 in range( 0, 10 ):
    for i_loop2 in range( 0,32000 ):
        for i_loop3 in range( 0,32000 ):
            i_counter += 1
            if ( i_counter > 50 ) :
                i_counter = 0

s_unixtime_end = time.time( )

seconds = s_unixtime_end - s_unixtime_start

print( "                     Result: %d       %0.3f seconds" % (i_counter, seconds) )
