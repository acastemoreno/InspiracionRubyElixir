User = Struct.new(:name, :language)
me = Ractor.make_shareable(User.new('Steven', %w[Ruby Elixir]))
p me.object_id

Ractor.new(me) do |user|
  p user.object_id
end

me.language.push('PHP') # can't modify frozen Array: ["Ruby", "Elixir"] (FrozenError)
