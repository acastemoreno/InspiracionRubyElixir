me = Ractor.make_shareable({ name: 'Albert', nickname: 'Amiguito' })

p me.object_id

Ractor.new(me) do |m|
  p m.object_id
end

sleep(0.5)
