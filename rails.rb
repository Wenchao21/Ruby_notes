text = "rails are rails, really good Ruby on Rails"

# 把所有的 "rails" 改为 "Rails"
text.gsub!("rails", "Rails")

# 把所有的单词 "Rails" 都改成首字母大写
text.gsub!(/\brails\b/, "Rails")

puts "#{text}"