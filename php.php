<?php
date_default_timezone_set( "America/Vancouver" );
$s_date_time = strtotime( date('Y-m-d H:i:s') );

$i_counter = 0;

for ($i_loop1 = 0; $i_loop1 < 10; $i_loop1++) {
	for ($i_loop2 = 0; $i_loop2 < 32000; $i_loop2++) {
		for ($i_loop3 = 0; $i_loop3 < 32000; $i_loop3++) {
			$i_counter++;
			if ($i_counter > 50) { $i_counter = 0; }
		}
	}
}

$s_date_time_end = strtotime( date('Y-m-d H:i:s') );
echo ( '                     Result: ' . $i_counter . '       ' .
		($s_date_time_end - $s_date_time) . " seconds\n" );

?>
