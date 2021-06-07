msg = 'Hello'

ractor = Ractor.new do
  p receive
end

ractor.send(msg, move: true)

sleep(0.5)

puts msg.inspect
