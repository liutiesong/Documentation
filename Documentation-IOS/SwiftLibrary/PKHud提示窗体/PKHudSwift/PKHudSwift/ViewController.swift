//
//  ViewController.swift
//  PKHudSwift
//
//  Created by 刘铁崧 on 2018/5/10.
//  Copyright © 2018年 刘铁崧. All rights reserved.
//

import UIKit
import PKHUD


class ViewController: UIViewController
{
    let progressBtn : UIButton = {
        let button = UIButton(type: UIButtonType.system);
        button.frame = CGRect(x: 40, y: 60, width: UIScreen.main.bounds.size.width - 80, height: 40);
        button.setTitle("ProgressFlash", for: UIControlState.normal);
        button.backgroundColor = UIColor.darkGray;
        button.layer.cornerRadius = 10;
        button.tintColor = UIColor.white;
        button.addTarget(self, action: #selector(showProgressFlash), for: UIControlEvents.touchUpInside);
        return button;
    }()
    let successBtn : UIButton = {
        let button = UIButton(type: UIButtonType.system);
        button.frame = CGRect(x: 40, y: 120, width: UIScreen.main.bounds.size.width - 80, height: 40);
        button.setTitle("SuccessFlash", for: UIControlState.normal);
        button.backgroundColor = UIColor.darkGray;
        button.layer.cornerRadius = 10;
        button.tintColor = UIColor.white;
        button.addTarget(self, action: #selector(showSuccessFlash), for: UIControlEvents.touchUpInside);
        return button;
    }()
    let errorBtn : UIButton = {
        let button = UIButton(type: UIButtonType.system);
        button.frame = CGRect(x: 40, y: 180, width: UIScreen.main.bounds.size.width - 80, height: 40);
        button.setTitle("ErrorFlash", for: UIControlState.normal);
        button.backgroundColor = UIColor.darkGray;
        button.layer.cornerRadius = 10;
        button.tintColor = UIColor.white;
        button.addTarget(self, action: #selector(showErrorFlash), for: UIControlEvents.touchUpInside);
        return button;
    }()
    let labelProgressBtn : UIButton = {
        let button = UIButton(type: UIButtonType.system);
        button.frame = CGRect(x: 40, y: 240, width: UIScreen.main.bounds.size.width - 80, height: 40);
        button.setTitle("LabelProgressFlash", for: UIControlState.normal);
        button.backgroundColor = UIColor.darkGray;
        button.layer.cornerRadius = 10;
        button.tintColor = UIColor.white;
        button.addTarget(self, action: #selector(labelProgressFlash), for: UIControlEvents.touchUpInside);
        return button;
    }()
    let labelBtn : UIButton = {
        let button = UIButton(type: UIButtonType.system);
        button.frame = CGRect(x: 40, y: 300, width: UIScreen.main.bounds.size.width - 80, height: 40);
        button.setTitle("LabelFlash", for: UIControlState.normal);
        button.backgroundColor = UIColor.darkGray;
        button.layer.cornerRadius = 10;
        button.tintColor = UIColor.white;
        button.addTarget(self, action: #selector(labelFlash), for: UIControlEvents.touchUpInside);
        return button;
    }()
    let routingImgBtn : UIButton = {
        let button = UIButton(type: UIButtonType.system);
        button.frame = CGRect(x: 40, y: 360, width: UIScreen.main.bounds.size.width - 80, height: 40);
        button.setTitle("RotatingImage", for: UIControlState.normal);
        button.backgroundColor = UIColor.darkGray;
        button.layer.cornerRadius = 10;
        button.tintColor = UIColor.white;
        button.addTarget(self, action: #selector(routingFlash), for: UIControlEvents.touchUpInside);
        return button;
    }()
    let ctrlOpen : UIButton = {
        let button = UIButton(type: UIButtonType.system);
        button.frame = CGRect(x: 40, y: 420, width: UIScreen.main.bounds.size.width/2 - 60, height: 40);
        button.setTitle("HUDOpen", for: UIControlState.normal);
        button.backgroundColor = UIColor.darkGray;
        button.layer.cornerRadius = 10;
        button.tintColor = UIColor.white;
        button.addTarget(self, action: #selector(ctrlShow), for: UIControlEvents.touchUpInside);
        return button;
    }()
    let ctrlClose : UIButton = {
        let button = UIButton(type: UIButtonType.system);
        button.frame = CGRect(x: UIScreen.main.bounds.size.width/2 + 20, y: 420, width: UIScreen.main.bounds.size.width/2 - 60, height: 40);
        button.setTitle("HUDClose", for: UIControlState.normal);
        button.backgroundColor = UIColor.darkGray;
        button.layer.cornerRadius = 10;
        button.tintColor = UIColor.white;
        button.addTarget(self, action: #selector(ctrlHide), for: UIControlEvents.touchUpInside);
        return button;
    }()
    let loadingShowSuccess : UIButton = {
        let button = UIButton(type: UIButtonType.system);
        button.frame = CGRect(x: 40, y: 480, width: UIScreen.main.bounds.size.width - 80, height: 40);
        button.setTitle("loading And Show Success", for: UIControlState.normal);
        button.backgroundColor = UIColor.darkGray;
        button.layer.cornerRadius = 10;
        button.tintColor = UIColor.white;
        button.addTarget(self, action: #selector(showAfterShowSuccess), for: UIControlEvents.touchUpInside);
        return button;
    }()
    let rotatingImgAndTextBtn : UIButton = {
        let button = UIButton(type: UIButtonType.system);
        button.frame = CGRect(x: 40, y: 540, width: UIScreen.main.bounds.size.width - 80, height: 40);
        button.setTitle("Title RotatingImage Subtitle", for: UIControlState.normal);
        button.backgroundColor = UIColor.darkGray;
        button.layer.cornerRadius = 10;
        button.tintColor = UIColor.white;
        button.addTarget(self, action: #selector(showRotatingImgAndText), for: UIControlEvents.touchUpInside);
        return button;
    }()
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        //背景遮罩
        HUD.dimsBackground = true;
        //允许用户交互
        HUD.allowsInteraction = true;
        self.view.addSubview(progressBtn)
        self.view.addSubview(successBtn)
        self.view.addSubview(errorBtn)
        self.view.addSubview(labelProgressBtn)
        self.view.addSubview(labelBtn)
        self.view.addSubview(routingImgBtn)
        self.view.addSubview(ctrlOpen)
        self.view.addSubview(ctrlClose)
        self.view.addSubview(loadingShowSuccess)
        self.view.addSubview(rotatingImgAndTextBtn)
        
    }
    @objc func showProgressFlash()
    {
        HUD.flash(HUDContentType.progress, delay: 1.0)
        {
            _ in
            print("progress-flash")
        }
    }
    @objc func showSuccessFlash()
    {
        HUD.flash(HUDContentType.success, delay: 1.0)
        {
            _ in
            print("success-flash")
        }
    }
    @objc func showErrorFlash()
    {
        HUD.flash(HUDContentType.error, delay: 1.0)
        {
            _ in
            print("error-flash")
        }
        
    }
    @objc func labelProgressFlash()
    {
        HUD.flash(HUDContentType.labeledProgress(title: "加载标题", subtitle: "加载副标题"), delay: 2.0)
        {
            _ in
            print("labelProgress-flash")
        }
        
    }
    @objc func labelFlash()
    {
        HUD.flash(HUDContentType.label("加载Label"), delay: 2.0)
        {
            _ in
            print("label-flash")
        }
        
    }
    @objc func routingFlash()
    {
        HUD.flash(HUDContentType.rotatingImage(UIImage(named: "2")), delay: 2.0)
        {
            _ in
            print("routing-flash")
        }
    }
    @objc func ctrlShow()
    {
        HUD.show(.progress)
    }
    @objc func ctrlHide()
    {
        HUD.hide()
    }
    @objc func showAfterShowSuccess()
    {
//        第一种写法：
//        HUD.show(HUDContentType.progress)
//        HUD.hide(afterDelay: 2.0)
//        {
//            finished in
//            HUD.flash(HUDContentType.success, delay: 1.0)
//        }
//        第二种写法：(更顺畅)
        HUD.show(.progress)
        // Now some long running task starts...
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            // ...and once it finishes we flash the HUD for a second.
            HUD.flash(.success, delay: 1.0)
        }
    }
    @objc func showRotatingImgAndText()
    {
        HUD.flash(HUDContentType.labeledRotatingImage(image: UIImage(named: "2"), title: "标题", subtitle: "副标题"), delay: 2.0)
        {
            _ in
            print("title-subtitle-image")
        }
    }
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

