defmodule Euler_20 do
 def facto(1), do: 1
 def facto(n), do: n * facto(n-1)
end
IO.inspect Enum.sum(Integer.digits(Euler_20.facto(100)))
