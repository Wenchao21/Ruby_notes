require 'win32ole'      
word = WIN32OLE.new('Word.Application')       
word.visible=true  #是否打开文件    
word.Documents.Add()       
for i in(0..100)       
  word.Selection.Font.Size=12       
  word.Selection.Font.ColorIndex = 2       
  word.Selection.TypeText("Word with Ruby ,just a test ,no true\n")       
end      
word.DefaultSaveFormat       
word.Documents.close() 