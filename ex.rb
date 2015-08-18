        require 'win32ole'    
    excel = WIN32OLE.new('Excel.Application')    
    book = excel.workbooks.add    
    sheets = book.worksheets(1)    
    cells = sheets.cells("A1:A5")    
    cells.each do |cell|    
      cell.value = 10    
    end    
	excel = WIN32OLE.new("Excel.Application")              
    excel.Visible = true  #是否打开文件    
    excel.WorkBooks.Open("d:\\really.xls")   #打开excel    
    worksheet = excel.ActiveWorkbook.WorkSheets(1)       
    # Output the sheet count of the current work book.    
    rows = worksheet.UsedRange.Rows  #得到excel文件的行数    
    worksheet.Range('A1:D1').value = ['North','South','East','West'] #往excel指定区域写入数据    
    worksheet.Range('A2')['value'] = "really"    
    worksheet.Range('B2')['value'] = "notreally"    
    worksheet.Range('C2')['value'] = "javaeye"    
    worksheet.Range('D2')['value'] = "notreally.javaeye.com"    
    excel.ActiveWorkbook.WorkSheets.add({'count'=>1, 'after'=>worksheet})    
    #添加一个excel工作区    
    excel.ActiveWorkbook.Close  #关闭工作区    
    excel.Quit()   