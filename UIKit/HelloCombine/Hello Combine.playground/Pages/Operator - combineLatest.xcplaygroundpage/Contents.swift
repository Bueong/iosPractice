//: [Previous](@previous)

import Foundation
import Combine


// Basic CombineLatest

let strPublisher = PassthroughSubject<String, Never>()
let numPublisher = PassthroughSubject<Int, Never>()

strPublisher.combineLatest(numPublisher).sink { (str, num) in
    print("Receive: \(str), \(num)")
}


strPublisher.send("a")
numPublisher.send(1)
strPublisher.send("b")
strPublisher.send("c")

numPublisher.send(2)
numPublisher.send(3)

// Advanced CombineLatest 두 요소의 타입이 달라도 상관없음

let usernamePublisher = PassthroughSubject<String, Never>()
let passwordPublisher = PassthroughSubject<String, Never>()

let validatedCredentialSubs = usernamePublisher.combineLatest(passwordPublisher)
    .map { (username, password) -> Bool in
        return !username.isEmpty && !password.isEmpty && password.count > 12
    }
    .sink { valid in
        print("credential valid? : \(valid)")
    }

usernamePublisher.send("danielpark")
passwordPublisher.send("1234567891012")

// Merge 두 요소의 타입이 같아야함

let publisher1 = [1, 2, 3, 4, 5].publisher
let publisher2 = [300, 400, 500].publisher

let mergedPublisherSubscription = publisher1.merge(with: publisher2)
    .sink { value in
        print("Merge: subscription received value \(value)")
    }


//: [Next](@next)
