defmodule Euler_21 do
 def lst_divisor(number,current_divisor,sum_divisor,borne_sup)do
	cond do
		current_divisor >= borne_sup -> sum_divisor
		rem(number,current_divisor)==0 -> lst_divisor(number,current_divisor+1,sum_divisor+current_divisor+div(number,current_divisor),div(number,current_divisor))
		true -> lst_divisor(number,current_divisor+1,sum_divisor,borne_sup)
	end
 end

 def is_amicable?(a,b) do
	div_b = lst_divisor(b,2,1,b)
	cond do 
		div_b == a -> true
		true -> false
	end
 end

 def lst_amicable(current_number,lst_ami) do
	sum_div = lst_divisor(current_number,2,1,current_number)
#	IO.inspect(current_number)
	cond do 
		current_number>10000 -> lst_ami
		is_amicable?(current_number, sum_div)&& current_number != sum_div -> lst_amicable(current_number+1,lst_ami++[current_number]++[sum_div])
		true -> lst_amicable(current_number+1,lst_ami)
	end
 end

end
 


IO.inspect Euler_21.lst_divisor(284,2,1,284)
IO.inspect Euler_21.is_amicable?(220,284)
IO.inspect Enum.sum(Enum.dedup(Enum.sort(Euler_21.lst_amicable(2,[]))))
#IO.inspect Euler_21.lst_amicable(1,[])
