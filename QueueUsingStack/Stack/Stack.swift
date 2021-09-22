//
//  Stack.swift
//  QueueUsingStack
//
//  Created by Virtual Dusk  on 22/09/21.
//

import Foundation

struct Stack<T>{
    
    private var arr : [T] = []

    mutating func push(item : T){
        arr.append(item)
    }
    
    mutating func pop() -> T?{

        return arr.popLast()
    }

    func peek() -> T?{
        guard let topElement = arr.last else {
            print("Stack is Empty")
            return nil
        }
        return topElement
    }
    func isEmpty() -> Bool{
        return arr.isEmpty
    }
    
}
