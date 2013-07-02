require 'pry-nav'
require 'pry'
3.times do 
  class C
    puts "Hello"
    a=1
    b=2
    binding.pry
  end
end
