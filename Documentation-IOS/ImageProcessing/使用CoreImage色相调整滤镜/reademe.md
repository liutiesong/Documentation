# 使用CoreImage色相调整滤镜

- 原图：

![原图](./2.jpg)

- 执行效果：

![执行效果](./1.png)

- 实例代码：

```
import CoreImage
    override func viewDidLoad()
    {
        super.viewDidLoad()
        /* 创建图片容器 */
        let myImage = UIImage(named: "2");
        let imageView = UIImageView(image: myImage);
        imageView.frame.size = CGSize(width: 300, height: 300);
        self.view.addSubview(imageView);
        
        //初始化CIImage图像对象
        let ciimage = CIImage(image: myImage!);
        //初始化颜色对象
        //初始化滤镜对象，并设置滤镜类型为色相调整滤镜
        let filter = CIFilter(name: "CIHueAdjust");
        //设置色相调整滤镜的输入角度
        filter?.setValue(3.14/5, forKey: kCIInputAngleKey);
        //设置需要应用的图像
        filter?.setValue(ciimage, forKey: kCIInputImageKey);
        
        //获取处理后的图像
        let finalImage = filter?.outputImage;
        imageView.image = UIImage(ciImage: finalImage!);
    }
```

