//
//  ViewController.swift
//  SwiftUseAlamofire
//
//  Created by 刘铁崧 on 2018/5/5.
//  Copyright © 2018年 刘铁崧. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireImage
import AlamofireObjectMapper

class ViewController: UIViewController {
    var imageView : UIImageView?
    override func viewDidLoad() {
        super.viewDidLoad()
//        responseToModel()//获取数据并通过AlamofireObjectMappe框架映射到Model- OBJ
        responseArrayToModel()//获取数据并通过AlamofireObjectMappe框架映射到Model- ARRAY
//        uploadImage()//上传图片
//        cacheImages()//使用第三方类库缓存图片
//        coreImageFilters()//使用第三方类库给图片添加滤镜效果
//        roundedCorners()//使用第三方类库剪切圆角操作
//        scalingImage()//使用第三方类库进行图片缩放
//        inflationImage();//膨胀和恢复被压缩图片的数据，提高图片渲染效率
//        picDownloadDemo()//图片下载显示Demo
//        downloodImageWithLoadingProgress();//可实时显示下载进度的图片下载
//        simpleDownload();//下载文件
//        manualValidation();//验证服务器状态并请求接口
//        testNetWorking();//测试网络状态
//        responseHandler();//通用格式请求
//        responseStringHandler();//请求string格式类型数据
//        responseDataHandler();//请求字节流格式类型数据
//        responseJsonHandler();//请求json格式类型数据
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /* ---------- 使用AlamofireObjectMapper将JSON映射到对象 ---------- */
    func responseToModel()
    {
        let url = "https://raw.githubusercontent.com/tristanhimmelman/AlamofireObjectMapper/d8bb95982be8a11a2308e779bb9a9707ebe42ede/sample_json";
        //请求接口
        Alamofire.request(url).responseObject
        {
            (response:DataResponse<WeatherResponse>) in
            //获取数据中的地理位置信息
            let weatherResponse = response.result.value;
            print("天气地理位置：\(String(describing: weatherResponse?.location))")
            print(weatherResponse?.three_day_forecast)
            //获取数据中的近三天天气情况信息
            if let threeDaysForecast = weatherResponse?.three_day_forecast
            {
                for forecast in threeDaysForecast
                {
                    print("日期：\(String(describing: forecast.day))");
                    print("温度：\(String(describing: forecast.temperature))");
                    print("天气：\(String(describing: forecast.conditions))");
                }
            }
        }
    }
    //对数组处理
    func responseArrayToModel()
    {
        let url = "https://raw.githubusercontent.com/tristanhimmelman/AlamofireObjectMapper/f583be1121dbc5e9b0381b3017718a70c31054f7/sample_array_json"
        //请求接口
        Alamofire.request(url).responseArray
        {
            (response:DataResponse<[Foercast]>) in
            if let forecastList = response.result.value
            {
                for forecast in forecastList
                {
                    print("日期：\(String(describing: forecast.day))");
                    print("温度：\(String(describing: forecast.temperature))")
                    print("天气：\(String(describing: forecast.conditions))");
                }
            }
        }
    }
    
    /* ---------- 下载文件---------- */
    //普通下载
    func simpleDownload()
    {
        //初始化下载请求对象,并设置下载后的存储目录，为沙盒中的文档目录
        let destination = DownloadRequest.suggestedDownloadDestination(for: FileManager.SearchPathDirectory.documentDirectory, in: FileManager.SearchPathDomainMask.userDomainMask)
        //输出沙盒中的文档目录
        print(NSHomeDirectory()+"/Documents");
        //调用下载方法，将下载后的文件存储在制定的目录中
        let downloadResult = Alamofire.download("https://httpbin.org/stream/1", to: destination);
        print(downloadResult)
    }
    //可实时显示下载进度的图片下载
    func downloodImageWithLoadingProgress()
    {
        //初始化下载请求对象,并设置下载后的存储目录，为沙盒中的文档目录
        let destination = DownloadRequest.suggestedDownloadDestination(for: FileManager.SearchPathDirectory.documentDirectory, in: FileManager.SearchPathDomainMask.userDomainMask);
        //设置请求参数
        let parameters:Parameters = ["foo":"bar"];
        //调用下载方法，将下载后的文件存储在制定的目录中
        Alamofire.download("http://images.apple.com/v/iphone/home/w/images/home/iphone_x_large_2x.jpg", method: HTTPMethod.get, parameters: nil, encoding: JSONEncoding.default, to: destination)
        .downloadProgress(queue: DispatchQueue.global())//获取下载进度回调
        { progress in
            print("进度完成比例：\(progress.fractionCompleted)")
            print("已经下载的字节数:\(progress.completedUnitCount)")
            print("全部字节数:\(progress.totalUnitCount)")
        }
        .validate{//完成图片下载后执行验证方法，返回成功标识
            request, response, temporaryURL, destinationURL in
                return .success
        }
        .responseJSON {//处理图片下载后的返回信息
            response in
            print("网络返回对象:\(response)")
            print("图片下载临时存放位置:\(String(describing: response.temporaryURL))")
            print("下载后存储的位置:\(String(describing: response.destinationURL))")
        }
    }
    //下载显示图片demo Alamofire+AlamofireImage
    func picDownloadDemo()
    {
        Alamofire.request("https://httpbin.org/image/png").responseImage { response in
            debugPrint(response)
            print(response.request!)
            print(response.response as Any)
            debugPrint(response.result)
            if let image = response.result.value
            {
                print("下载好的图片：\(image)");
                let size = self.view.bounds.size;
                self.imageView = UIImageView(image: image);
                self.imageView?.center = CGPoint(x: size.width/2, y: size.height/2)
                self.view.addSubview(self.imageView!)
                
            }
        }
    }
    /* ---------- 图片处理 ---------- */
    //膨胀和恢复被压缩图片的数据，提高图片渲染效率
    func inflationImage()
    {
        //获得项目中图片所在路径
        let imageUrl = Bundle.main.url(forResource: "1", withExtension: "jpg")!;
        //加载图片，并转化为数据格式
        let imageData = try! Data(contentsOf: imageUrl);
        //初始化图片对象
        let image = UIImage(data: imageData, scale: UIScreen.main.scale);
        
        //对压缩图片恢复、图片较大时最胡奥新建线程执行该方法
        image?.af_inflate();
        
        //获取跟视图显示区域尺寸
        let size = self.view.bounds.size;
        self.imageView = UIImageView(image: image);
        self.imageView?.center = CGPoint(x: size.width/2, y: size.height/2);
        self.view.addSubview(self.imageView!);
    }
    
    //使用第三方类库进行图片缩放
    func scalingImage()
    {
        let image = UIImage(named: "2");
        let imageSize = CGSize(width: 200, height: 200);
        //调用图片对象缩放方法，将图片缩小至指定尺寸
//        let scaleImage = image?.af_imageScaled(to: imageSize)//强制压缩图片
//        let scaleImage = image?.af_imageAspectScaled(toFit: imageSize)//对图片宽高进行等比例缩放
        let scaleImage = image?.af_imageAspectScaled(toFill: imageSize)//等比例缩放至最大宽高尺寸
        
        let size = self.view.bounds.size;
        self.imageView = UIImageView(image: scaleImage);
        self.imageView?.center = CGPoint(x: size.width/2, y: size.height/2);
        self.view.addSubview(self.imageView!);
    }
    
    //使用第三方类库剪切圆角操作
    func roundedCorners()
    {
        //获取图片
        let image = UIImage(named: "3")!
        let imageSize = CGSize(width: 200, height: 200);
        let scaleImage = image.af_imageAspectScaled(toFill: imageSize)//等比例缩放至最大宽高尺寸
        //设置圆角
        let radius:CGFloat = 20.0;
        
        //调用圆角处理方法
//        let roundImage = scaleImage.af_imageRounded(withCornerRadius: radius);
        //调用将图片切成圆形方法
        let roundImage = scaleImage.af_imageRoundedIntoCircle();
        
        let size = self.view.bounds.size;
        self.imageView = UIImageView(image: roundImage);
        self.imageView?.center = CGPoint(x: size.width/2, y: size.height/2);
        self.view.addSubview(self.imageView!);
    }
    
    //使用第三方类库给图片添加滤镜效果
    func coreImageFilters()
    {
        let image = UIImage(named: "3");
        let imageSize = CGSize(width: 200, height: 200);
        let scaleImage = image?.af_imageAspectScaled(toFill: imageSize)//等比例缩放至最大宽高尺寸
        //给图片添加棕褐色色调滤镜
//        let spialImage = scaleImage?.af_imageFiltered(withCoreImageFilter: "CISepiaTone");
        //设置动态模糊滤镜<parameters参数：输入半径  输入角度>
        //CIGaussianBlur-高斯模糊
        let blurredImage = scaleImage?.af_imageFiltered(withCoreImageFilter: "CIMotionBlur", parameters: ["inputRadius":10,"inputAngle":45])
        
        let size = self.view.bounds.size;
//        self.imageView = UIImageView(image: spialImage);//棕色滤镜
        self.imageView = UIImageView(image: blurredImage);//模糊滤镜
        self.imageView?.center = CGPoint(x: size.width/2, y: size.height/2);
        self.view.addSubview(self.imageView!);
    }
    //使用第三方类库缓存图片
    func cacheImages()
    {
        //创建缓存
        //设置缓存区域大小为100M，当缓存内容超出100M时将自动清除缓存中的内容，直到缓存区域剩余空间达到60M
        let imageCache = AutoPurgingImageCache(memoryCapacity: 100_000_000, preferredMemoryUsageAfterPurge: 60_000_000);
        //创建网络请求对象,下载指定位置网络图片
        let urlRequest = URLRequest(url: URL(string: "https://httpbin.org/image/png")!);
        //下载指定位置图片
        Alamofire.request("https://httpbin.org/image/png").responseImage { response in
            if let image = response.result.value
            {
                //将下载的图片进行缓存，并设置缓存图片的网络请求和标识符
                imageCache.add(image, for: urlRequest, withIdentifier: "circleImage");
                
                //当需要再次下载位于同一网址图片时，只要指定网络请求标识符即可
                let cachedAvatarImage = imageCache.image(for: urlRequest, withIdentifier: "circleImage");
                
                self.imageView = UIImageView(image: cachedAvatarImage);
                self.imageView?.center = self.view.center;
                self.view.addSubview(self.imageView!);
                
                //当不需要缓存某张图片时，调用缓存对象的移除图片功能即可
                imageCache.removeImage(for: urlRequest, withIdentifier: "circleImage")
            }
        }
    }
    /* ---------- 上传文件 ---------- */
    //上传图片
    func uploadImage()
    {
        //获得项目中图片所在路径
        let fileUrl = Bundle.main.url(forResource: "1", withExtension: "jpg");
        //调用上传方法
        Alamofire.upload(fileUrl!, to: "https://httpbin.org/post")
            .uploadProgress
            {
                progress in
                print("完成比例：\(progress.fractionCompleted)");
                print("已经上传的字节数：\(progress.completedUnitCount)");
                print("总字节数：\(progress.totalUnitCount)");
            }
            .validate()
            .responseJSON
            {
                response in
                print("上传图片完成：\(response.result)")
                //上传结束回到主线程操作
                DispatchQueue.main.async
                {
                    print("上传完成：\(response.result)")
                    //获取服务器返回结果信息
                    let message = "服务器返回结果：\(response.result)";
                    //创建弹出窗口显示
                    let alert = UIAlertController(title: "警告", message: message, preferredStyle: UIAlertControllerStyle.alert);
                    let confirmAction = UIAlertAction(title: "确认", style: UIAlertActionStyle.default, handler: { response in
                        print("点击确认\(response)")
                    })
                    alert.addAction(confirmAction);
                    self.present(alert, animated: true, completion: nil);
                }
            }
    }
    
    
    
    /* ---------- 请求 - 判断服务器访问状态 ---------- */
    func manualValidation()
    {
        Alamofire.request("https://httpbin.org/get")
        .validate(statusCode: 200..<300)//检测状态码是否在200-300之间
        .validate(contentType: ["application/json"])//验证内容类型是否为json
        .responseData { response in
            switch response.result{
                case .success:
                    print("访问成功")
                case .failure(let error):
                    print("访问错误：\(error)")
            }
        }
        //简化写法
        Alamofire.request("https://httpbin.org/gt").validate().responseJSON { response in
            switch response.result{
                case .success:
                    print("访问成功")
                case .failure(let error):
                    print("访问失败：\(error)")
            }
        }
    }
    
    /* ---------- 网络状态监控 ---------- */
    func testNetWorking()
    {
        //创建管理器
        let manager = NetworkReachabilityManager(host: "www.baidu.com")
        //开始监听
        manager?.startListening();
        //获取监听回调
        manager?.listener = {
            status in
            //输出网络状态
            print("NetWorkingStatus:\(status)")
            //网络状态管理其对象的可访问性
            print("isReachable\(String(describing: manager?.isReachable))")
            //判断是否可以通过无限广域网访问
            print("isReachableOnWWAN:\(String(describing: manager?.isReachableOnWWAN))");
            //判断是否可以通过局域网或无线局域网访问
            print("isReachableOnEthernetOrWifi\(String(describing: manager?.isReachableOnEthernetOrWiFi))");
            //网络访问状态
            print("networkReachabilityStatus:\(String(describing: manager?.networkReachabilityStatus))");
            //结束监听
            manager?.stopListening();
        }
    }
    /* ---------- 解析数据为指定类型 ---------- */
    
    //处理通用数据格式
    func responseHandler()
    {
        Alamofire.request("https://httpbin.org/get").response
        {
            result in
            print("request:\(String(describing: result.request))")
            print("response\(String(describing: result.response))")
            print("error:\(String(describing: result.error))")
            if let data = result.data, let utf8Text = String(data: data, encoding: String.Encoding.utf8)
            {
                print("data:\(utf8Text)")
            }
        }
    }
    //获取服务器返回字符串类型数据
    func responseStringHandler()
    {
        Alamofire.request("https://httpbin.org/get").responseString { result in
            print("success:\(result.result.isSuccess)");
            print("response data:\(String(describing: result.result.value))")
        }
    }
    //获取服务器返回二进制类型数据
    func responseDataHandler()
    {
        Alamofire.request("https://httpbin.org/get").responseData { response in
            debugPrint("ALL RESPONSE INFO:\(response)");
            //获得返回数据，对返回数据进行字符编码
            if let data = response.result.value,let utf8Data = String(data: data, encoding: String.Encoding.utf8)
            {
                print("Data:\(utf8Data)")
            }
        }
    }
    //获取服务器返回JSON类型数据
    func responseJsonHandler()
    {
        Alamofire.request("https://httpbin.org/get").responseJSON { response in
            if let jsonData = response.result.value
            {
                print("jsonData:\(jsonData)")
            }
        }
    }


}

