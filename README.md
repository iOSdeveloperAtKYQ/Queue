# Queue
基数数组来实现的顺序队列-循环队列
1.1 实现

```objectivec
/// 循环队列、可以避免顺序队列的数据搬移操作，但是会浪费一个存储空间
class ArrayQueue: NSObject {
    var arrayQueue: Array<Any>?
    var size: Int? //队列大小
    var head: Int? //头下标
    var tail: Int? //尾下标
    
    init(size: Int) {
        self.size = size
        self.head = 0
        self.tail = 0
        self.arrayQueue = Array.init()
    }
}
```
1.2进队列

```objectivec
    /// 进队列
    /// - Parameter data: 进队列数据
    /// - Returns: 进队列结果
    func enqueue(data: Any) -> Bool {
        if (tail! + 1) % size! == head! {
            //队列已满
            return false
        }
        
        if arrayQueue?.count == size {
            arrayQueue![tail!] = data
        }else {
            arrayQueue?.append(data)
        }
        tail = (tail! + 1) % size!
        return true
    }
```
1.3出队列

```objectivec
    /// 出队列
    /// - Returns: 队列数据
    func dequeue() -> Any? {
        if head! == tail! {
            return nil
        }
        let data = arrayQueue![head!]
        head = (head! + 1) % size!
        return data
    }
```
1.4用法

```objectivec
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
```
