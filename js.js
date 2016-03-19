var s_date_time = new Date( );
// allowing to use js24 (spidermonkey) OR nodejs as runtime
if ('undefined' == typeof print)
	print = function(v)
		{
			process.stdout.write( v + "\n" );
		};

var iloops = 15000;
try
{
	if (scriptArgs[0]) iloops = parseInt( scriptArgs[ 0 ], 10 );
}
catch( exc )
{
	if (process.argv[2]) iloops = parseInt( process.argv[ 2 ], 10 );
}

var i_counter = 0;

for (var i_loop1 = 0; i_loop1 < 10; i_loop1++)
{
   for (var i_loop2 = 0; i_loop2 < iloops; i_loop2++)
	{
       for (var i_loop3 = 0; i_loop3 < iloops; i_loop3++)
		 {
           i_counter++;
           if (i_counter > 50) { i_counter = 0; }
       }
   }
}

var s_date_time_end = new Date( );

print( '                     Result: ' + i_counter + '       ' +
		+ (s_date_time_end.getTime()-s_date_time.getTime())/1000
		+ ' seconds' );
