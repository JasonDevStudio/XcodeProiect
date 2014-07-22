//
//  Classes.swift
//  Learning
//
//  Created by Jason on 14/7/20.
//  Copyright (c) 2014年 Jason. All rights reserved.
//

import Foundation

class Test001:TestInterFacer{
    func OutPutString(strTemp: String) -> String {
        return "输出结果：\(strTemp)"
    }
    
    func Repeat<ItemType>(item: ItemType, times: Int) -> ItemType[]{
        var result  = ItemType[]()
        
        for i in 0..<times{
            result  += item
        }
        
        return result
        
    }
    
    func SomeFunc<T:TestModel>(someT:T) ->T{
        
        return someT
    }
}

class TestModel{
    var _Name : String = ""
}