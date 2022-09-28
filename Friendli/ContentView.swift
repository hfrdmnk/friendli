//
//  ContentView.swift
//  Friendli
//
//  Created by Dominik Hofer on 20.09.22.
//

import SwiftUI

struct ContentView: View {
    var friends = [Friend.example1, Friend.example2, Friend.example3, Friend.example4, Friend.example5]
    
    @State private var selectedFriend = [false, false, false, false, false]
    
    var body: some View {
        NavigationStack {
            ZStack {
                ForEach(friends.indices, id: \.self) { index in
                    FriendCardView(friend: friends[index], selected: $selectedFriend[index])
                        /* .onTapGesture {
                            for var friend in selectedFriend {
                                if friend {
                                    friend = false
                                }
                            }
                            selectedFriend[index] = true
                        } */
                        .offset(y: CGFloat(index * -70))
                }
                .offset(y: CGFloat(friends.count * 40 / 2))
            }
            .navigationBarTitle("Friend.li")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .monospaced()
            .preferredColorScheme(.dark)
    }
}
