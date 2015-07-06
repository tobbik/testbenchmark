#!/usr/bin/ruby -w

time_1 = Time.now

i_counter = 0;

for _i_loop1 in 0..9
    for _i_loop2 in 0..31999
        for _i_loop3 in 0..31999
            i_counter = i_counter + 1
            if i_counter > 50
                i_counter = 0
            end
        end
    end
end

time_d = Time.now - time_1

puts "                     Result: " + i_counter.to_s + "       " +
		time_d .to_s + " seconds";
