defmodule Euler_07 do
 alias :math, as: Math
 def prime?(n,sqrt_n,current_divisor) do
  #IO.inspect current_divisor
  cond do
   n==1 -> false
   n<4 -> true #2or 3
   rem(n,2)==0 -> false
   n<9 -> true #
   rem(n,3)==0 -> false
   rem(n,current_divisor)==0 -> false
   current_divisor > sqrt_n -> true
   true -> prime?(n,sqrt_n,current_divisor+1)
  end
 end


 def list_prime(goal,lst,current_number) do
  cond do
	length(lst) == goal -> lst
	prime?(current_number,Math.floor(Math.sqrt(current_number)),2) -> list_prime(goal, lst ++ [current_number],current_number+1)
	true -> list_prime(goal, lst, current_number+1)
  end
 end
 
 def list_prime_bis(goal,current_number,index) do
  cond do
	index == goal -> (current_number-1)
	prime?(current_number,:math.floor(:math.sqrt(current_number)),2) -> list_prime_bis(goal, current_number+1,index+1)
	true -> list_prime_bis(goal,current_number+1,index)
  end
 end


end

alias :math, as: Math
#IO.puts Euler_07.prime?(109,Math.floor(Math.sqrt(109)),2)
#IO.inspect Enum.max(Euler_07.list_prime(10001,[],1))
IO.inspect Euler_07.list_prime_bis(10001,1,0)#~1.5s
