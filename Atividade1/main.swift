//
//  main.swift
//  Atividade1
//
//  Created by Brenno Tondato de Faria on 14/06/19.
//  Copyright © 2019 Brenno Tondato de Faria. All rights reserved.
//  Atividade 1 - PEL2016
//

struct Module {
    public var structure = [String]()
    public var index = 0
}

class Stack{
    
    var module = Module()
    
    func pop() {
        if module.index-1 == -1 {
            print("Stack is empty \(module.structure)")
        }else{
            module.structure.remove(at: module.index-1)
            module.index -= 1
            print("Stack is \(module.structure) \n")
        }
    }
    
    func push(value:String) {
        module.index += 1
        module.structure.append(value)
        print("Stack is \(module.structure) \n")
    }
    
    func top() {
        if module.index == 0 {
            print("Stack is empty \(module.structure) \n")
        }else{
            print("Stack Top Value : \(module.structure[module.index-1]) \n")
        }
    }
}

class Queue {

    var module = Module()
    
    func pop() {
        if module.index == -1 {
            print("Queue is empty \(module.structure) \n")
        }else{
            module.structure.remove(at: 0)
            module.index -= 1
            print("Queue is \(module.structure) \n")
        }
    }
    
    func push(value:String) {
        module.index += 1
        module.structure.append(value)
        print("Queue is \(module.structure) \n")
    }
    
    func top() {
        if module.index == -1 {
            print("Queue is empty \(module.structure) \n")
        }else{
            print("Queue Top Value : \(module.structure[0]) \n")
        }
    }
}

var stack = Stack()
var queue = Queue()

stack.push(value: "brenno")
stack.push(value: "ellen")
stack.push(value: "tadeu")
stack.push(value: "mariana")
stack.push(value: "bianca")
stack.push(value: "paula")

stack.top()
stack.pop()
stack.top()
stack.pop()
stack.pop()
stack.pop()
stack.pop()
stack.pop()
stack.top()

queue.push(value: "Brenno")
queue.push(value: "Ellen")
queue.push(value: "Tadeu")

queue.top()

queue.pop()
queue.pop()
queue.top()

queue.pop()
queue.top()
