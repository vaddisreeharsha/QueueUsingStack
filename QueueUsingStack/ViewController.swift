//
//  ViewController.swift
//  QueueUsingStack
//
//  Created by Virtual Dusk  on 22/09/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemBlue
        operation()
        // Do any additional setup after loading the view.
    }


    func operation(){
        var q = Queue<Int>()
        q.enqueue(item: 1)
        q.enqueue(item: 2)
        print(q.deQueue())
        q.enqueue(item: 3)
        q.enqueue(item: 4)
        print(q.deQueue())
        print(q.deQueue())
        print(q.deQueue())
        print(q.deQueue())
        
        
        
    }
}

