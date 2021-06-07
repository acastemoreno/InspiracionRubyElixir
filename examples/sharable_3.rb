class C
  class << self
    attr_accessor :tricky
  end
end

C.tricky = 'test'

Ractor.new(C) do |cls|
  p "I see #{cls}"
  p "I can't see #{cls.tricky}"
end

sleep(0.5)
