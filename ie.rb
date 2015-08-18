    require "win32ole" #包含库    
    ie = WIN32OLE.new('InternetExplorer.Application')    
    ie.visible = true #这个时候就可以看到一个ie的界面出来了    
    ie.navigate('www.baidu.com') #转到这个页面    