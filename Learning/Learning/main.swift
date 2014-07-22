//
//  main.swift
//  Learning
//
//  Created by Jason on 14/7/20.
//  Copyright (c) 2014年 Jason. All rights reserved.
//

import Foundation

var http404 = ("404","Not Found")
var http405 = (name:"404",message:"NotFound")
let http404Error = (404, "Not Found")

var test001 :TestInterFacer = Test001()
var test002 = Test001()
var testmodel = TestModel()
testmodel._Name = "李四"
//println(test002.Repeat("Hello", times: 3))
//println(test002.SomeFunc(testmodel)._Name)


var yuZu = ( 404 ,  "error" )
var sum = Double(yuZu.0) * 404

var tt002 : String! = "11111111"
var tt003 :Int = 123
var tt004 = tt003 > 121 ? tt003 : 000


for i in 1...5 {
    println(i)
}

if !tt002.isEmpty {
    println("tt002:\(tt002)")
}

for char in "Dog!!!!"{
    println("char:\(char)")
}

var strTemo001 = "QQQQQWWWWWDDDDD!!!!!!@@@@@######"
println(countElements(strTemo001))

println(strTemo001.uppercaseString)
println(strTemo001.lowercaseString)


var dogStr = "Dofg!!!!!"
for code in dogStr.utf8 {
    println("code:\(code)")
}

var dogsStr = ["111","222","333","4444"]
for (index,val) in enumerate(dogsStr) {
    println("index:\(index) value:\(val)")
}

func test009(val:String)->String{
    var anootherPoint = (2,0 )
    switch anootherPoint {
    case (var x,0):
        return "x:\(x)"
    case (0,var y):
        return "y:\(y)"
    default :
        return ""
    }
}

println("1")




