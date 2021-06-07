ractor = Ractor.new(Ractor.current) do |current|
  number = Ractor.receive
  current.send(number * number)
end

ractor.send(10)
p Ractor.receive
