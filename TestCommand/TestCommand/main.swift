//
//  main.swift
//  TestCommand
//
//  Created by Jason on 14-7-11.
//  Copyright (c) 2014年 Jason. All rights reserved.
//

import Foundation

// 嵌套函数 测试函数
func Jisuan(inNum1:Int,inNum2:Int)->Double{
    
    func Jia(num1:Int,num2:Int)->Double{
        return Double(num1+num2)
    }
    
    return Jia(inNum1, inNum2)
}


// for循环 测试函数
func ForTfest(count:Int)->String{
    var msg = ""
    for var j = 0 ; j < count; j++ {
        msg = msg + " " + String(j)
    }
    
    for ji in 100..<106 {
        msg = msg + " " + String(ji)
    }
    
    return msg
}

// 多个输出参数 测试函数   调用时可以 var aa =GetPrices() aa.0 or aa.1
func GetPrices()->(Double,Double,Double){
    return (33.33 , 44.44, 22.22 )
}

// 可变参数 ，用数组接收  测试函数
func sumOf(numbers :Int...) -> String {
    var sum = ""
    for number in numbers{
        sum = sum + " " + String(number)
        
    }
    
    return sum
}

// 函数当做参数传入另一个函数。
func makeIncrementer() ->(Int->Int){
    
    func addOne(number :Int)->Int{
        return 1 + number
    }
    
    return addOne
}
var inc = makeIncrementer()
//print(inc(35))


// 函数也可以当做参数传入
// BEGIN
//
func hasAnyMathces(list:Int[],condition:Int->Bool)->String{
    
    for item in list{
        if condition(item){
            return "true"
        }
    }
    
    return "false"
}

func lessThanTen(number:Int)->Bool{
    return number < 10
}

var numbers = [20,10,71,11,12]
//print(hasAnyMathces(numbers, lessThanTen))
//END

// 函数实际上是一个特殊的闭包。 使用 in 来分割参数并返回类型
//print({() -> String in return "大神"}())

class Test{
    var Tname : String
    init(name:String){
        self.Tname = name
    }
    
    func TestA(){
        
    }
    
    func TestB(){
        
    }
}

class TestSub : Test{
    
    
    
    
    init(_name : String, strName:String) {
        _strName = strName
        super.init(name: _name)
    }
    
    var _strName:String
    var _strNameTemp:String{
    get{
        return self._strName
    }
    set{
        self._strName = newValue
    }
    }
    
    override func TestA() {
        
    }
}

class Test001{
    
    enum Rank : Int{
        case Ace = 1
        case Kace = 2
        
        func GetValue()->String{
            switch self{
            case .Ace:
                return "返回结果"
            default :
                return "22"
                
            }
            
        }
    }
    
}



protocol Test005{
    var simple :String{get}
    mutating func adjust() ->String
}

class Test006:Test005{
    var simple :String = "ceshi"
    func adjust() ->String {
        return "测试结果：通过"
    }
}

//var test001:Test005 = Test006()
//print(test001.adjust())

class Test007{
    func swap<T>(inout a:T,inout b:T){
        var c :T = a
        a = b
        b = c
    }
}

var someInt = 3
var anotherInt = 107
var test007 = Test007()
test007.swap(&someInt, b: &anotherInt)
//print(String(someInt)+"---"+String(anotherInt))


func TestSwitch(val :(String,String) )->String{

    switch val{
    case var (x,"110"):
        return "x:\(x)"
    case var (x,y) where x == "100" :
        return "x:\(x) y:\(y)"
    default :
        return ""
        
    }
}

//println(TestSwitch(("100","1110")))

func TestSwitch001(val:String)->String{
    switch val{
    case var x where x.isEmpty:
        return "x:null"
    case var x where x == "999" :
        return "x:\(x)"
    case var x where x=="9999" :
        fallthrough
    default:
        return "val:\(val)"
    }
}

//println(TestSwitch001("9999"))

func arti(numbers : Double...)->String{
    var msg :String = ""
    for num in numbers {
        msg += "num:\(num) "
    }
    
    return msg
}

//println(arti(113.0 , 114.0 , 115.0 , 116.0))

var strA = "1"
var strB = "2"
func swap(inout a:String,inout b:String){
    var c = a
    a = b
    b = c
}

func mathFunc(stra :String,strb:String)->String{
    return "\(stra)\(strb)"
}


func mathFuncEx(maths:(String,String)->String,paraA:String,paraB:String)->String{
    return maths(paraA,paraB)
}

var math : (String,String)->String = mathFunc
//println(mathFuncEx(mathFunc,"123","3221"))

func stepOne(input :Int)->Int{
    return input + 1
}

func stepTwo(input:Int)->Int{
    return input - 1
}

func choose(isEx:Bool)->(Int)->Int{
    return isEx ? stepOne:stepTwo
}

var currentValue = 3
var val = choose(currentValue>0)
//println("\(val(12342))")


func backwards(s1:String,s2:String)->Bool{
    return s1>s2
}


let names2 = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]



var names1 = [55,22,11,5,65,112,14,555]
sort(&names1, { (s1:Int, s2:Int) -> Bool in return s1 > s2 })
sort(&names1, {s1,s2 in s1 > s2})
sort(&names1, >)

var arry :String[] = ["1","2"]

var arry1 :[String] = ["1","2"]























