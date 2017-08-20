defmodule Euler_12 do
 def gen_triangular_number(index) do
   Enum.sum(for n <- 0..index, do: n)

 end



 def find_prime_factor(number, current_divisor, lst) do
  cond do
   rem(number,current_divisor)==0 -> 
	cond do 
		div(number, current_divisor)==1 -> lst++[current_divisor]
		true -> find_prime_factor(div(number,current_divisor),2,lst++[current_divisor])
	end
   true -> find_prime_factor(number,current_divisor+1,lst)
  end
 end



 def count_factor(index,goal) do
  number = gen_triangular_number(index)
  list_prime_factor = find_prime_factor(number,2,[])
  nb_factor = list_prime_factor |> Enum.reduce(%{}, fn x, acc -> Map.update(acc, x, 1, &(&1 + 1)) end)
  nb_factor = Enum.reduce(Enum.map((Map.values(nb_factor)),&(&1+1)),1,fn(x, acc) -> x * acc end)
  IO.puts "index: "<>to_string(index)<>" number: "<>to_string(number)<>" nb_factor: "<>to_string(nb_factor)
  IO.inspect nb_factor

  cond do
   nb_factor > goal -> number
   true -> count_factor(index+1,goal)
  end

 end

end
Euler_12.count_factor(2,500)
