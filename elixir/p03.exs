defmodule Euler_03 do
  
 def lst_div(n, factor, last_factor,lst_factor)do
	cond do
		n > 1 &&  rem(n, factor) == 0  -> lst_div(div(n,factor),factor+1,factor,lst_factor++[factor])
                n > 1 -> lst_div(n,factor+1,last_factor,lst_factor)
		true -> lst_factor
	end
 end	


end

IO.inspect lst_div(600851475143,2,1,[])
