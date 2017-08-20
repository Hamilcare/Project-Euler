defmodule Euler_14 do
 def collatz(number, lst) do
	cond do
		number == 1 -> lst ++ [1]
		rem(number,2)==0 -> collatz(div(number,2),lst++[number])
		true -> collatz( ((3*number) +1), lst++[number])
	end
 end

 def get_max_sequence([head | tail],number,max) do
	tmp = length(collatz(head,[]))
	
	if tmp > max do
		number = head
		max = tmp
	end
	get_max_sequence(tail,number,max)
 end

 def get_max_sequence([],number,max) do
	number
 end

end

#IO.inspect Euler_14.get_max_sequence((for n <- 1..1000000, do: n),0,0)#~60s


defmodule Euler_14_bis do # same as above but without useless stuff
 def collatz(number,sequence_length) do
	cond do 
		number == 1 -> (sequence_length+1)
		rem(number,2)==0 -> collatz(div(number,2),(sequence_length+1))
		true -> collatz(((3*number)+1),sequence_length+1)
	end
 end

 def get_max_sequence(0,result,max) do
	result
 end

 def get_max_sequence(current, result, max) do
	tmp = collatz(current,0)
	
	if tmp > max do
		result = current
		max = tmp
	end
	get_max_sequence(current-1,result,max)
 end
end

#IO.inspect Euler_14_bis.collatz(13,0)
IO.inspect Euler_14_bis.get_max_sequence(1000000,0,0)#~15s
