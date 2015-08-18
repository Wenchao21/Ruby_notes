require "dbi"

 
db = DBI.connect("DBI:Mysql:10.237.80.138", "amd", "password") 
db = DBI.connect("DBI:Mysql:mysql:localhost", "root") 

row = dbh.select_one("SELECT VERSION()")

puts "Server version: " + row[0]
