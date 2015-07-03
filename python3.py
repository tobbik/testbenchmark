from datetime import datetime
import time

print ("Starting at: " + str(datetime.now()))
s_unixtime_start = time.time()

i_counter = 0

# From 0 to 31999
for i_loop1 in range(0, 10):
    for i_loop2 in range(0,10000):
         for i_loop3 in range(0,10000):
             i_counter += 1
             if ( i_counter > 50 ) :
                 i_counter = 0

print ("Ending at: " + str(datetime.now()))
s_unixtime_end = time.time()

i_seconds = long(s_unixtime_end) - long(s_unixtime_start)
s_seconds = str(i_seconds)

print ("Total seconds:" + s_seconds)
