
class Name
  attr_accessor :age,:addr
  attr :test,true

  def initialize
    @age = 20
    @addr = 'Pudong'
  end

  def self.oldest(*cc)
    cc.sort_by {|x|x.age}.last.age
  end

end

cc = Name.new
cc.test = 12
puts cc.test
puts cc.age





