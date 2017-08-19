defmodule Euler_10 do
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


 def list_prime(bound,lst,current_number) do
  cond do
        current_number >= bound -> lst
        prime?(current_number,Math.floor(Math.sqrt(current_number)),2) -> list_prime(bound, lst ++ [current_number],current_number+1)
        true -> list_prime(bound, lst, current_number+1)
  end
 end

 def sieve(lst,current_number,bound) do
  cond do 
   current_number > Math.sqrt(bound) -> lst
   true -> sieve(Enum.filter(lst,&(rem(&1, current_number)!=0 or &1==current_number)),current_number+1, bound) 
  end
 end

end

IO.inspect Enum.sum(Euler_10.sieve(2..2000000,2,2000000)) #~30s
#IO.inspect Enum.sum(Euler_10.sieve((for n<-2..2000000, rem(n,2)!=0, do: n),3,2000000))#~30s
#IO.inspect Enum.sum(Euler_10.list_prime(2000000,[],1))#~170s

