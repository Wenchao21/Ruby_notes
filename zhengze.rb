phone = "2004-959-559 #This is Phone Number"

# 删除 Ruby 的注释
phone = phone.sub!(/#.*$/, "")   
puts "Phone Num : #{phone}"

# 移除数字以外的其他字符
phone = phone.gsub!(/\D/, "")    
puts "Phone Num : #{phone}"