# Sass的配置与基本使用

* [Sass中文网1](https://www.sasscss.com)
* [Sass中文网2](https://www.sass.hk/)


### - Sass的配置和安装

#### 1. 安装配置Sass环境

```
sudo gem install sass
//或者通过npm安装
sudo npm install sass
```

- 执行编译指令(将scss文件编译为css文件)

```
sass index.scss index.css
```

### - SASS的基本使用

#### 1. 变量

- 编辑sass样式文件(index.scss)：

```
$fontStack:    Helvetica, sans-serif;
$primaryColor: #333;

body {
  font-family: $fontStack;
  color: $primaryColor;
}
```

- 编译后css样式文件(index.css)：

```
body {
  font-family: Helvetica, sans-serif;
  color: #333;
}
```
#### 2. 嵌套
sass可以进行选择器的嵌套，表示层级关系
- 编辑sass样式文件(index.scss)：

```
nav {
  ul {
    margin: 0;
    padding: 0;
    list-style: none;
  }

  li { display: inline-block; }

  a {
    display: block;
    padding: 6px 12px;
    text-decoration: none;
  }
}
```

- 编译后css样式文件(index.css)：

```
nav ul {
  margin: 0;
  padding: 0;
  list-style: none;
}

nav li {
  display: inline-block;
}

nav a {
  display: block;
  padding: 6px 12px;
  text-decoration: none;
}
```
#### 2. 导入
sass中如导入其他sass文件，最后编译为一个css文件

- 编辑sass样式文件(index.scss)：

- ** 文件一：

```
tml,
body,
ul,
ol {
   margin: 0;
  padding: 0;
}
```
- ** 文件二：

```
@import 'reset';

body {
  font-size: 100% Helvetica, sans-serif;
  background-color: #efefef;
}
```
- 编译后css样式文件(index.css)：

```
html, body, ul, ol {
  margin: 0;
  padding: 0;
}

body {
  background-color: #efefef;
  font-size: 100% Helvetica, sans-serif;
}
```
#### 3. mixin封装
sass中可用mixin定义一些代码片段，且可传参数，方便日后根据需求调用
- 编辑sass样式文件(index.scss)：

```
@mixin box-sizing ($sizing) {
    -webkit-box-sizing:$sizing;     
       -moz-box-sizing:$sizing;
            box-sizing:$sizing;
}
.box-border{
    border:1px solid #ccc;
    @include box-sizing(border-box);
}
```

- 编译后css样式文件(index.css)：

```
.box-border {
  border: 1px solid #ccc;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
```
#### 4.扩展/继承
sass可通过 @extend来实现代码组合声明
- 编辑sass样式文件(index.scss)：

```
.message {
  border: 1px solid #ccc;
  padding: 10px;
  color: #333;
}

.success {
  @extend .message;
  border-color: green;
}

.error {
  @extend .message;
  border-color: red;
}

.warning {
  @extend .message;
  border-color: yellow;
}
```

- 编译后css样式文件(index.css)：

```
.message, .success, .error, .warning {
  border: 1px solid #cccccc;
  padding: 10px;
  color: #333;
}

.success {
  border-color: green;
}

.error {
  border-color: red;
}

.warning {
  border-color: yellow;
}
```
#### 5.运算
sass可进行简单的加减乘除运算等
- 编辑sass样式文件(index.scss)：

```
.container { width: 100%; }

article[role="main"] {
  float: left;
  width: 600px / 960px * 100%;
}

aside[role="complimentary"] {
  float: right;
  width: 300px / 960px * 100%;
}
```

- 编译后css样式文件(index.css)：

```
.container {
  width: 100%;
}

article[role="main"] {
  float: left;
  width: 62.5%;
}

aside[role="complimentary"] {
  float: right;
  width: 31.25%;
}
```
#### 6.颜色
sass中集成了大量的颜色函数
- 编辑sass样式文件(index.scss)：

```
$linkColor: #08c;
a {
    text-decoration:none;
    color:$linkColor;
    &:hover{
      color:darken($linkColor,10%);
    }
}
```

- 编译后css样式文件(index.css)：

```
a {
  text-decoration: none;
  color: #0088cc;
}
a:hover {
  color: #006699;
}
```
