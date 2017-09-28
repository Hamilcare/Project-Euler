defmodule Euler_13 do

 def sum_number_in_file(filename) do
	{:ok, device} = File.open(filename, [:read, :utf8])
	sum = read_every_line(device,0)
 	File.close(device)
	sum
 end

 def read_every_line(device,sum) do
	data = IO.read(device, :line)
#	IO.inspect sum
	cond do 
		data == :eof -> sum
		true -> read_every_line(device, sum + String.to_integer(String.trim(data)))
	end
 end
end
IO.inspect Euler_13.sum_number_in_file("numbers")
