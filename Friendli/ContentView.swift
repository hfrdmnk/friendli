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
    let offset = 70
    
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    HStack {
                        Text("friend.li")
                            .font(.title.bold())
                        
                        Spacer()
                    }
                    .padding()
                    
                    Spacer()
                }
                
                ZStack {
                    ForEach(0..<friends.count, id: \.self) { index in
                        FriendCardView(friend: friends[index])
                            .padding()
                            .onTapGesture {
                                print(index)
                            }
                            .offset(y: CGFloat(index * -1 * offset))
                    }
                }
                .offset(y: CGFloat(friends.count * offset))
            }
            .toolbar {
                ToolbarItem {
                    Button {
                        print("Friends view")
                    } label: {
                        Label("Friends", systemImage: "person.3.sequence")
                    }
                    .buttonStyle(.bordered)
                    .tint(.ultimateGreen)
                }
                
                ToolbarItem {
                    Circle()
                        .stroke(Color.ultimateGreen)
                        .frame(width: 48, height: 48)
                        .overlay(
                            Image("me")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .cornerRadius(40)
                        )
                }
            }
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
