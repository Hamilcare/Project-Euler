IO.puts Enum.reduce(1..100,&+/2)*Enum.reduce(1..100,&+/2) - Enum.reduce(Enum.map(1..100,&(&1*&1)),&+/2)
