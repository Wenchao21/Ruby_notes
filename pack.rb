=begin
str='a,b,c,a,c,d,a,c,d,b,c,c,c,c,c'

counter = Hash.new(0)

str.split(',').each { |val| counter[val]+=1 }

puts counter


=end

time1 = Time.new

puts "time is: " + time1.inspect

puts time1.day

puts time1.yday

puts Time.now.to_i



