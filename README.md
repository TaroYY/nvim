## WYY的第一个NeoVim配置
> 按照掘金小册配置: [掘金小册：从0到1配置NeoVim](https://juejin.cn/book/7051157342770954277)
> <br>花了19块买的小册子，入门了vim的一些配置，配置主要用lua编写，还需要更熟悉些lua
### 录屏
![录屏](https://wyy-bucket-filestore.oss-cn-shanghai.aliyuncs.com/oss/nvim_scree_record_2023_03_11.gif)
### 主要功能
- 左侧文件列表
- LSP（Language Server Protocal）管理
- 自动跳转、代码高亮、自动补全
- 自动format
- 插件管理
- 模糊搜索
- 底部状态栏
- 顶部tab栏
- 右侧大纲栏
- git相关配置
### TODO
- test相关配置
### 其他插件
[插件广场](https://vimawesome.com/)

### 常用的快捷键配置
以下快捷键是自己按照习惯配置的，可以根据个人习惯在```keybindings.lua```文件中修改
- 通用操作
  - 光标操作
    - 普通模式下
      - h: 左
      - j: 下
      - k: 上
      - l: 右
      - ^: 行首
      - $: 行尾
      - gg: 文件首部
      - G: 文件尾部
  - 普通模式切换Insert模式
    - a: 在光标块后面继续输入
    - i: 在光标块前面继续输入
  - 普通模式切换visual模式：v
  - 复制：yy
  - 粘贴：p
  - 删除一行： dd
  - 删除一个字符：x
  - 替换一个字符：r
  - 子窗口间移动，Alt+h\j\k\l
  - 上\下滚动：ctrl+u/d
  - 插入模式下到行首：ctrl+h
  - 插入模式下到行尾：ctrl+l
  - 退出：q，强制退出：qq
- 目录操作
  - 打开关闭目录：Alt+m
  - 新建文件：a
  - 打开目录/文件：o
  - 重命名：r 
  - 删除：d
  - 折叠目录: <BackSpace>
  - 折叠所有：W
  - 展开所有：E
- 代码跳转相关
  - 跳转函数：gd
  - 函数用法：gh
  - 函数引用：gr
  - 向前跳转：gs
- 模糊搜索
  - 搜关键字：ctrl + f
  - 搜文件：ctrl+p
- tab操作
  - 左右切tab: ctrl+h/l
- git blame
  - Alt + b
- 右侧大纲
  - Alt + t
- 冲突
  - 接受他人：ct
  - 接受自己：co 
  - 接受两者：cb
### Q&A
#### NeoVim与系统剪切板
> Vim本身的复制和剪切会存在自身的寄存器中，可以用```:reg```来查看寄存器当前的状态，系统的寄存器是“+”，和“*”，NeoVim默认是不支持的。
因此如果想要打通NeoVim和系统的剪切板，可以采用以下方式：<br>
Mac: ```brew install xclip```,并将vimrc文件中的配置clipboard名称设置为“unnamed”，参见```basic.lua```文件中```vim.o.clipboard = "unnamed"```。
这样便可以用+y来复制内容到系统剪切板，从系统剪切板复制的内容也可以通过+p，粘贴到vim中。
#### 我是如何配合命令行使用的
> 采用了Byobu，tmux的封装，配合vim一起，实现下方命令行，上方编辑器的效果
#### Mac Terminal的Alt 键无法用作快捷键怎么解决
在设置里将option键作为meta键勾选上
#### 为什么我的导航栏没有图标icon乱码了
需要采用后缀带Nerd Font的字体
#### git的使用
可以采用```:Git add .```, ```:Git commit -m "some comments"```, ```:Git push```等命令实现git功能，减少对命令行的依赖
