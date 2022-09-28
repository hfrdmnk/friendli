//
//  Post.swift
//  Friendli
//
//  Created by Dominik Hofer on 20.09.22.
//

import Foundation

struct Post: Identifiable {
    let id = UUID().uuidString
    let date = Date.now
    let image: String
    
    static let examples1: [Post] = [
        Post(image: "post-1"),
        Post(image: "post-2"),
        Post(image: "post-3"),
        Post(image: "post-4"),
        Post(image: "post-5")
    ]
    
    static let examples2: [Post] = [
        Post(image: "post-6"),
        Post(image: "post-7"),
        Post(image: "post-8"),
        Post(image: "post-9"),
        Post(image: "post-10")
    ]
    
    static let examples3: [Post] = [
        Post(image: "post-11"),
        Post(image: "post-12"),
        Post(image: "post-13"),
        Post(image: "post-14"),
        Post(image: "post-15")
    ]
    
    static let examples4: [Post] = [
        Post(image: "post-16"),
        Post(image: "post-17"),
        Post(image: "post-18"),
        Post(image: "post-19"),
        Post(image: "post-20")
    ]
    
    static let examples5: [Post] = [
        Post(image: "post-21"),
        Post(image: "post-22"),
        Post(image: "post-23"),
        Post(image: "post-24"),
        Post(image: "post-25")
    ]
}
