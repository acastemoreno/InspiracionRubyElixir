Etc.nprocessors.times do
  Ractor.new do
    loop do
      rand(100000000)
    end
  end
end