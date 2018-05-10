//
//  WeatherResponse.swift
//  SwiftUseAlamofire
//
//  Created by 刘铁崧 on 2018/5/7.
//  Copyright © 2018年 刘铁崧. All rights reserved.
//

//此处应导入安装对象映射库
import ObjectMapper

class WeatherResponse: Mappable
{
    //属性
    var location:String?
    var three_day_forecast:[Foercast]?//最近三天的天气情况
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        location <- map["location"]
        three_day_forecast <- map["three_day_forecast"]
    }
    

}
