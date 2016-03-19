local i_counter = 0
local i_loops = 10000 -1
if #arg > 0 then i_loops = tonumber( arg[ 1 ] ) - 1 end
local i_time_start = os.clock( )

for i_loop1=0,9 do
	for i_loop2=0,i_loops do
		local l_i_counter = i_counter
		for i_loop3=0,i_loops do
			l_i_counter = l_i_counter + 1
			if l_i_counter > 50 then
				l_i_counter = 0
			end
		end
		i_counter = l_i_counter
	end
end

local i_time_end = os.clock( )
io.write( string.format( '                     Result: %d       %0.3f seconds\n',
	i_counter,
	i_time_end - i_time_start ) )

os.exit( 0 )
