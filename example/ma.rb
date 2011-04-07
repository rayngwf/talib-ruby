require 'rubygems'
require 'talib_ruby'

# init input data
a = Array.new
10.times { |i| a.push i.to_f }

10.times do |k|
	b = Array.new(10)
	l = TaLib::Function.new("MA")
	# setup input parameter
	l.in_real(0,a);
	# setup optional parameter
	l.opt_int(0,k+2);
	# setup output parameter
	l.out_real(0,b);
	l.call(0,9)
	p "k=#{k+2}"
	p b
	p l.out(0)
end

b = Array.new(3,2)
l = TaLib::Function.new("CDLDOJI")

open =  [rand]*10
high =  [rand]*10
low =   [rand]*10
close = [rand]*10
vol   = [rand]*10
oi    = [rand]*10
open =  [0.81000001]*10
close = [0.81000001]*10
high =  [1.0]*10
low =   [0.7]*10
vol   = [1.0]*10
oi    = [1.0]*10

l.in_price(0, open, high, low, close, vol, oi)
l.out_int(0,b)
p l.call(0,0)

p "#####"
p "#####"
p "#####"
p b
p l.out(0)
p "#####"
#p l.in(0)
#p l.ins()
#p l.outs()
#p TaLib.constants.inspect

#TA_SetInputParamPricePtr( param_holder->p, FIX2INT(param_index), FLT2DBL(&dp[0], in_open), FLT2DBL(&dp[1], in_high), FLT2DBL(&dp[2], in_low), FLT2DBL(&dp[3], in_close), FLT2DBL(&dp[4], in_volume), FLT2DBL(&dp[5], in_oi));
