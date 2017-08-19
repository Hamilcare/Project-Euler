#Find the largest palindrome made from the product of two 3-digit numbers.

IO.puts Enum.find(Enum.sort((for i <- 999..100, j<-999..100, do: i*j),&(&1>=&2)),&(to_string(&1)==String.reverse(to_string(&1))))
