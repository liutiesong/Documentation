# 单击、双击、长按手势

- 示例代码：

```
//创建举行
let demoview = UIView(frame: CGRect(x:self.view.bounds.size.width/2-100, y: self.view.bounds.size.height/2-50, width: 200, height: 100));
demoview.backgroundColor = UIColor.red;
//打开元素的交互权限
demoview.isUserInteractionEnabled = true;       
self.view.addSubview(demoview);

//添加单击手势
demoview.addGestureRecognizer(UITapGestureRecognizer(target: self, action:#selector(singleTap)))
//添加长安手势
demoview.addGestureRecognizer(UILongPressGestureRecognizer(target: self, action: #selector(longPress)))
//添加双击手势
//创建手势
let doubleGesture = UITapGestureRecognizer(target: self, action: #selector(doubleTap));
//设置点击次数为2
doubleGesture.numberOfTapsRequired = 2;
//设置手势为单次双击事件
doubleGesture.numberOfTouchesRequired = 1;
demoview.addGestureRecognizer(doubleGesture);

```

响应方法代码：

```
//响应单击方法
@objc func singleTap()
{
    print("单击视图")
}
//响应双击方法
@objc func doubleTap()
{
    print("双击视图")
}
//响应长按方法
@objc func longPress()
{
    print("长按视图")
}
```