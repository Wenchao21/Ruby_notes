class Foo
  Bar = "hello"
  bar = "hello"
  def aa
	puts "aaa"
  end	
  
end

#puts Foo::bar
puts Foo::Bar
a = Foo.new
puts Foo.bar