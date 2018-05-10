//
//  Foercast.swift
//  SwiftUseAlamofire
//
//  Created by 刘铁崧 on 2018/5/7.
//  Copyright © 2018年 刘铁崧. All rights reserved.
//

//此处应导入安装对象映射库
import ObjectMapper

class Foercast: Mappable
{
    //属性
    var day:String?
    var temperature:Int?
    var conditions:String?
    
    //必须实现的初始化方法
    required init?(map: Map) {
        
    }
    //映射方法
    func mapping(map: Map) {
        //依次将Map中的内容映射到对象的三个属性
        day <- map["day"]
        temperature <- map["temperature"]
        conditions <- map["conditions"]
    }
    

}
