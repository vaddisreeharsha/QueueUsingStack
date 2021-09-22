//
//  Queue.swift
//  QueueUsingStack
//
//  Created by Virtual Dusk  on 22/09/21.
//

import Foundation

struct Queue<T>{
    private var s1 = Stack<T>()
    private var s2 = Stack<T>()
    /*
     I am using 2 stacks.
     In stack1 i will insert the data.
     When ever perform deQueue operation i will move all data from s1 to s2.
     Then i will pop the s2 , So it will follow FIFO
     Again insert mean i will do it in s1 only
     */
    
    
    mutating func enqueue(item : T){
        s1.push(item: item)
    }
    
    mutating func deQueue() -> T?{
        
        if s2.isEmpty() {
            if s1.isEmpty(){
                print("Queue is Empty")
                return nil
            }
            while (!s1.isEmpty()) {
                guard let topItem = s1.pop() else { break }
                s2.push(item: topItem)
            }
        }
        
        return s2.pop()
    }
}
