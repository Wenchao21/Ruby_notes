load  'project.rb'

module FirstModule
  def say
    puts 'hello'
  end
end

class Name
  attr_accessor :age,:addr
  attr :test,true
  include Project,FirstModule

  def initialize
    @age = 20
    @addr = 'Pudong'
  end

  def self.oldest(*cc)
    cc.sort_by {|x|x.age}.last.age
  end

end


a = {username:{name:'wenchao'},password:'aaa'}

#a.each_pair {|x,y| puts x;puts y}

puts a[:username][:name]
a = {username:'second'}

puts a[:username]
mengda




