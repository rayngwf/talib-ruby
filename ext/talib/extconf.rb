require 'mkmf'

raise "no talib.la" unless have_library("ta_lib", "TA_Initialize")
raise "no ta_libc.h" unless have_header("ta_libc.h")
create_makefile("talib")
