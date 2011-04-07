require 'mkmf'

dir_config("talib", "/home/www/ruby/include/ta-lib", "/home/www/ruby/lib")

have_library("ta_lib", "TA_Initialize")
create_makefile("talib")
