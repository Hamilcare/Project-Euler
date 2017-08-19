defmodule Euler_02 do

 def fib(a, _, 0 ) do a end
 def fib(a, b, n) do fib(b, a+b, n-1) end
 def fib(n) do fib(0,1,n) end 

IO.inspect Enum.sum(Enum.filter(Enum.map(1..50,&Euler_02.fib/1),&(&1<4000000)and rem(&1,2)==0))


end
