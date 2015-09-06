require 'mysql'  
    begin  
      db = Mysql.init
      db.options(Mysql::SET_CHARSET_NAME, 'utf8')
      db = Mysql.real_connect('10.237.80.138', 'amd', 'password', 'test_farm_dashboard', 3306)
      db.query('SET NAMES utf8')
      db.query('drop table if exists tb_test')
      db.query('create table tb_test (id int,text LONGTEXT) ENGINE=MyISAM DEFAULT CHARSET=utf8')
      rslt = db.query('select * from os')
      rslt.each do |row|
        puts "#{row[0]}--- #{row[1]}--- #{row[2]}--- #{row[3]}---#{row[4]}"
      end
    rescue Mysql::Error => e  
      puts "Error code: #{e.errno}"  
      puts "Error message: #{e.error}"  
      puts "Error SQLSTATE: #{e.sqlstate}" if e.respond_to?('sqlstate')
    ensure  
      db.close if db  
    end  
  
