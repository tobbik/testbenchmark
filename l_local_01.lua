local i_counter = 0
local i_time_start = os.clock()

for i_loop1=0,9 do
	for i_loop2=0,31999 do
		for i_loop3=0,31999 do
			i_counter = i_counter + 1
			if i_counter > 50 then
				i_counter = 0
			end
		end
	end
end

local i_time_end = os.clock()
print( string.format( 'Counter: %i\n', i_counter))
print( string.format( 'Total seconds: %.2f\n', i_time_end - i_time_start ) )

os.exit( 0 )
