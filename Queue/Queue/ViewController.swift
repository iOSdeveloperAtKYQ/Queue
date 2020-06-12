//
//  ViewController.swift
//  Queue
//
//  Created by Mac123 on 2020/6/12.
//  Copyright © 2020 K. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //MARK: - 循环队列，利用数组来实现
        let arrayQueue = ArrayQueue.init(size: 4)
        for i in 0 ... 4 {
            print("进队列\(arrayQueue.enqueue(data: i))")
        }
        for _ in 0 ... 4 {
            print("出队列\(arrayQueue.dequeue())")
        }
        for i in 4 ... 7 {
            print("进队列\(arrayQueue.enqueue(data: i))")
        }
    }


}

