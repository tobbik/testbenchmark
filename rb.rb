#!/usr/bin/ruby -w

args = ARGV
i_loops   = 10000
if args.length > 0
	i_loops = args[ 0 ].to_i;
end
i_counter = 0;

time_1 = Time.now

for _i_loop1 in 0..9
    for _i_loop2 in 0..i_loops
        for _i_loop3 in 0..i_loops
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
