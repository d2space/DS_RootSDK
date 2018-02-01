//
//  DS_Register.swift
//  DS_RootSDK
//
//  Created by d2space on 2018/2/1.
//  Copyright © 2018年 D2space. All rights reserved.
//

import Foundation
import DS_ModelSDK

public class DS_Register<T: NSObject>{
    public class func callDS_ModelSDK(_ json: Any? = nil) -> T{
        if json == nil{
            let dic = ["name": "周顺",
                       "age": "25",
                       "cards":[["name":"金融","id":"1"],["name":"乐购","id": "2"]],
                       "card":["name": "家乐福", "id": "1005","bank":["id": "005","name": "招商银行"]]] as [String : Any]
            let u = T.ds_mapObj(dic)
            return u
        }else{
            let u = T.ds_mapObj(json)
            return u
        }
    }
}
