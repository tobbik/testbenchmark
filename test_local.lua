global_var      = 10
local local_var = 20

-- require( 'test_local_include' ) would do the similar stuff
local c = loadfile( 'test_local_include.lua' )
c( )
