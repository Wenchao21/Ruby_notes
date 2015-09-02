3.times {puts 'aaa'}

1.upto(10) {|x| puts 'hewenchao'}

b = [1,2,3,4,5]
b.each do |x|
  puts x.abs
end

h = {
    :one=>1,
    :tow=>2
}

h[:one]
h[:three] = 3
h.each do |key,value|
  print "#{value}:#{key}"
end

def SayHello(name)
  puts name
  3.times{
    puts 'hello!'
  }
end

SayHello('jack')


puts Math.sqrt(16)
def Math.AddTwo(x)
  x+2
end

puts Math.AddTwo(2)


def love(name)
  [name+' aaa',name+' bbb']
end

movie,sport = love('wenchao')
puts movie
puts sport

module FourLegAnimal
class Animal
  def GetLeg
    4
  end
end
end

module TwoLegAnimal
  class Animal
    def GetLeg
      2
    end
  end
end

animal = FourLegAnimal::Animal.new()
puts 'four leg is:'+animal.GetLeg.to_s









