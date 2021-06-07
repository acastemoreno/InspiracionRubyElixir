msg = 'Hello'
p msg.object_id

Ractor.new(msg) do |m|
  p m.object_id
end

sleep(0.5)
