//
//  main.swift
//  SimpleCalc
//
//  Created by Teddy Pappas on 10/7/15.
//  Copyright © 2015 Teddy Pappas. All rights reserved.
//

import Foundation
func input() -> String {
    let keyboard = NSFileHandle.fileHandleWithStandardInput()
    let inputData = keyboard.availableData
    let result = NSString(data: inputData, encoding:NSUTF8StringEncoding) as! String
    return result.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
}

func convert(num1:String) -> Int {
    return NSNumberFormatter().numberFromString(num1)!.integerValue
}

print("Enter an expression separated by returns:")

let input1 = input()
//print(input1)

if input1.rangeOfString(" ") != nil{
    if (input1.rangeOfString("count") != nil){
        var count = 0
        for i in input1.characters {
            if i == " " {
                count++
            }
        }
        print(count)
    } else if (input1.rangeOfString("avg") != nil){

    } else if (input1.rangeOfString("fact") != nil){
    
    } else {
        
    }
} else {
    let sign = input()
    let input2 = input()
    let num1 = convert(input1)
    let num2 = convert(input2)
    
    switch sign {
        case "+":
            print("result :\(num1+num2)")
        case "-":
            print("result :\(num1-num2)")
        case "*":
            print("result :\(num1*num2)")
        case "/":
            print("result :\(num1/num2)")
        case "%":
            print("result :\(num1%num2)")
        default:
            print("Error: unknown sign")
    }
}



