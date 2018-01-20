:: Name：BatPPT 幻灯片项目，用批处理窗口的演示文稿
:: Author：Icy（enderman1024@foxmail.com）

@echo off




:: 【这里设置文件名（重要）】
::    生成的release文件请务必更名为此处设置的文件名
set FILE_NAME=batppt.bat




:: 【这里设置颜色，两个颜色代码分别表示前景色和背景色，颜色代码参考如下：】    
::    0 = 黑色       8 = 灰色
::    1 = 蓝色       9 = 淡蓝色
::    2 = 绿色       A = 淡绿色
::    3 = 浅绿色     B = 淡浅绿色
::    4 = 红色       C = 淡红色
::    5 = 紫色       D = 淡紫色
::    6 = 黄色       E = 淡黄色
::    7 = 白色       F = 亮白色

color 02





:: 【这里设置标题名称（窗口标题）】

title BatPPT



:: 【初始化】
echo 准备？
echo [按任意键确认]
pause >nul
cls
echo 设置环境...
md pack
ping -n 2 127.1 >nul
path=%path%;"C:\Program Files\WinRAR";"pack"
echo   完成
echo 展开内嵌文件...
ping -n 2 127.1 >nul
copy %FILE_NAME% 02.bat
ren 02.bat 02.rar
unrar x 02.rar /y
del 02.rar
ping -n 2 127.1 >nul
echo   完成
ping -n 2 127.1 >nul
cls
echo 开始？
echo [按任意键确认]
pause >nul
cls




:: 【主体部分】
::   主体范例[一页]（"^"符号用于转义一些操作字符（如">","="等）为普通字符，否则无法显示）：
::     echo ^>
::     echo ^>
::     echo ^>
::     echo ^>
::     echo ^>
::     echo ^>
::     echo ^>
::     echo ^>
::     echo ^>
::     echo ^>
::     echo ^>
::     echo ^>
::     echo ^>
::     echo ^>
::     echo ^>                                      ^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=
::     echo ^>
::     echo ^>                                         生      物      实      验      报      告
::     echo ^>
::     echo ^>                                      ^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=^=[by Icy Cloud]
::     pause >nul
::     cls
::   断点结构体（用于在显示一页文稿后暂停直到按键盘任意按钮显示下一页的代码片段）：
::     pause >nul
::     cls
::   添加图片方式：
::     1. 将图片文件（文件格式必须是bmp位图格式，例如“pony.bmp”）放置于设置的包路径下（默认为工程目录下的pack文件夹）
::     2. 在主体代码中使用 image [图片文件名] [X轴绝对坐标] [Y轴绝对坐标] >nul
::     3. 代码范例：image pony.bmp 500 100 >nul





:: 【结束并清除缓存】
rd /s /q pack
exit