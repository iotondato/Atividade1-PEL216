//
//  main.swift
//  Atividade1
//
//  Created by Brenno Tondato de Faria on 14/06/19.
//  Copyright © 2019 Brenno Tondato de Faria. All rights reserved.
//  Atividade 1 - PEL2016
//

class Stack{
    private var structure = [String]()
    private var index = 0
    
    func pop() {
        if index-1 == -1 {
            print("Stack is empty \(structure)")
        }else{
            structure.remove(at: index-1)
            index -= 1
            print("Stack is \(structure) \n")
        }
    }
    
    func push(value:String) {
        index += 1
        structure.append(value)
        print("Stack is \(structure) \n")
    }
    
    func top() {
        if index == 0 {
            print("Stack is empty \(structure) \n")
        }else{
            print("Stack Top Value : \(structure[index-1]) \n")
        }
    }
}

class Queue {
    private var structure = [String]()
    private var index = -1
    
    func pop() {
        if index == -1 {
            print("Queue is empty \(structure) \n")
        }else{
            structure.remove(at: 0)
            index -= 1
            print("Queue is \(structure) \n")
        }
    }
    
    func push(value:String) {
        index += 1
        structure.append(value)
        print("Queue is \(structure) \n")
    }
    
    func top() {
        if index == -1 {
            print("Queue is empty \(structure) \n")
        }else{
            print("Queue Top Value : \(structure[0]) \n")
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
