//
//  Friend.swift
//  Friendli
//
//  Created by Dominik Hofer on 20.09.22.
//

import Foundation
import SwiftUI

struct Friend: Identifiable {
    let id = UUID().uuidString
    let name: String
    let accountName: String
    let profilePic: String
    let emojis: String
    let color: Color
    let posts: [Post]
    
    static let example1 = Friend(name: "Sarah Smith", accountName: "@sarahs", profilePic: "portrait-1", emojis: "🌍✈️", color: .friendliIndigo, posts: Post.examples1)
    static let example2 = Friend(name: "Brenda Carlson", accountName: "@brencar", profilePic: "portrait-2", emojis: "🍕💯", color: .friendliRed, posts: Post.examples2)
    static let example3 = Friend(name: "Donald Carlson", accountName: "@donaldcar", profilePic: "portrait-3", emojis: "🏴󠁧󠁢󠁥󠁮󠁧󠁿☕️", color: .friendliYellow, posts: Post.examples3)
    static let example4 = Friend(name: "Andrew Wilson", accountName: "@andreww", profilePic: "portrait-4", emojis: "🤓📸", color: .friendliGreen, posts: Post.examples4)
    static let example5 = Friend(name: "Kimberly Gomez", accountName: "@kimberlygo", profilePic: "portrait-5", emojis: "✨🤗", color: .friendliTeal, posts: Post.examples5)
}
