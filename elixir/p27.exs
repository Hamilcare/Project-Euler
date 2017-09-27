defmodule Euler_27 do
#From p07 
 alias :math, as: Math
 def prime?(n,sqrt_n,current_divisor) do
  #IO.inspect current_divisor
  cond do
   n<=1 -> false
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

 #Real beginning
 def list_suite(n,a,b,lst_gen,lst_prime) do
   current = n*n+n*a+b
   
   cond do 
     current<0 -> lst_gen
     #Enum.member?(lst_prime,current)==true -> list_suite(n+1,a,b,[current | lst_gen], lst_prime)
     prime?(current,Math.floor(Math.sqrt(current)),2)==true -> list_suite(n+1,a,b,[current | lst_gen], lst_prime)
     true -> lst_gen
   end
 end


 def test_tuple(a,b,current_max,lst_prime,a_max,b_max) do
	cond do
		b > 1000 -> test_tuple(a+1,1,current_max,lst_prime,a_max,b_max)	
		a > 1000 -> [[a_max|b_max]|current_max] 
	#	(a*a-4*b) >=0 -> test_tuple(a,b+1,current_max,lst_prime,a_max,b_max) #feeling #grumpy superboum
		Enum.count(list_suite(0,a,b,[],lst_prime)) > current_max -> test_tuple(a,b+1,(Enum.count(list_suite(0,a,b,[],lst_prime))),lst_prime,a,b)
		true -> test_tuple(a,b+1,current_max,lst_prime,a_max,b_max)
	end
 end
end

alias :math, as: Math

#lst_prime = (Euler_27.list_prime(2301,[],1))
lst_prime = []
IO.inspect Euler_27.test_tuple(-1000,1,0,lst_prime,-1000,1)
