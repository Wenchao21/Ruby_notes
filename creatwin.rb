require 'rubygems'
require 'fox16' #require fxruby
include Fox # include Fox module，一般来说不会带来命名空间问题
class MyWindow < FXMainWindow #写一个FXMainWindow的子类
  def initialize app #覆盖父类的构造函数，并设置窗口的标题和宽高
    super app, 'My Window', :width => 600, :height => 400
  end
  def create #实现create方法，主要是提供show的方式
    super
    show PLACEMENT_SCREEN
  end
end
if __FILE__ == $0 #如果是当前文件
  app = FXApp.new 'My window', 'My window' #创建FXapp
  main_window = MyWindow.new app #创建MyWindow窗体
  app.create #显示窗体
  app.run # 运行程序
end 