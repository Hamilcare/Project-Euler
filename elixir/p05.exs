defmodule Euler_05 do
 def p5(number,current_divisor)do
   cond do 
	rem(number,current_divisor) != 0 -> p5(number+1,2)
        rem(number,current_divisor) == 0 and current_divisor < 20 -> p5(number,current_divisor+1)
        rem(number,current_divisor) == 0 and current_divisor == 20 -> number
   end
 end
end

IO.inspect Euler_05.p5(2,2)
