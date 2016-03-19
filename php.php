<?php
date_default_timezone_set( "America/Vancouver" );
$i_loops = 10000;
if (sizeof( $argv ) > 1 )
	$i_loops = 0 + $argv[ 1 ];

$i_counter = 0;
$s_date_time = strtotime( date('Y-m-d H:i:s') );


for ($i_loop1 = 0; $i_loop1 < 10; $i_loop1++) {
	for ($i_loop2 = 0; $i_loop2 < $i_loops; $i_loop2++) {
		for ($i_loop3 = 0; $i_loop3 < $i_loops; $i_loop3++) {
			$i_counter++;
			if ($i_counter > 50) { $i_counter = 0; }
		}
	}
}

$s_date_time_end = strtotime( date('Y-m-d H:i:s') );
echo ( '                     Result: ' . $i_counter . '       ' .
		($s_date_time_end - $s_date_time) . " seconds\n" );

?>
