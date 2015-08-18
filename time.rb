
    4.times do |i|   
            File.open("temp.rb","w") do |f|   
                f.puts "def test"  
                f.puts "#{i}"  
                f.puts "end"  
            end  
            load "temp.rb"  
            puts test   
    end   
