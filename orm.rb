require 'active_record'  

ActiveRecord::Base.establish_connection(:adapter => "oci8",  
                                        :username => "username",  
                                        :password => "password",  
                                        :database => "mydb",  
                                        :host => "myhost")  

class SomeTable < ActiveRecord::Base  
  set_table_name "test_table"  
  set_primary_key "some_id"  
end  

SomeTable.find(:all).each do |rec|  
  # process rec as needed...  
end  

item = SomeTable.new  
item.id = 1001  
item.some_column = "test"  
item.save  