local i_counter = 0
local i_time_start = os.clock()

for i_loop1=0,9 do
	for i_loop2=0,31999 do
		local l_i_counter = i_counter
		for i_loop3=0,31999 do
			l_i_counter = l_i_counter + 1
			if l_i_counter > 50 then
				l_i_counter = 0
			end
		end
	i_counter = l_i_counter
	end
end

local i_time_end = os.clock()
print( string.format( 'Counter: %i\n', i_counter))
print( string.format( 'Total seconds: %.2f\n', i_time_end - i_time_start ) )

os.exit( 0 )
