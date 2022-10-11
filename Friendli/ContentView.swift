//
//  ContentView.swift
//  Friendli
//
//  Created by Dominik Hofer on 20.09.22.
//

import SwiftUI


enum Position {
    case top, bottom
}

extension View {
    func stacked(at index: Int, in total: Int, atThe position: Position? = nil) -> some View {
        
        guard let position else {
            let offset = Double(total - index)
            return self.offset(x: 0, y: offset * 70)
        }
        
        if position == .top {
            return self.offset(x: 0, y: -250)
        } else if position == .bottom {
            return self.offset(x: 0, y: 700)
        }
        
        return self.offset(x: 0, y: 0)
    }
}

struct ContentView: View {
    var friends = [Friend.example1, Friend.example2, Friend.example3, Friend.example4, Friend.example5]
    
    @State private var selectedFriend = [true, true, true, true, true]
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
                            .onTapGesture {
                                /* if selectedFriend[index] {
                                    selectedFriend[index] = false
                                } else {
                                    selectedFriend = Array<Bool>(repeating: false, count: friends.count)
                                    selectedFriend[index] = true
                                }
                                
                                print(selectedFriend) */
                                print(index)
                            }
                            .stacked(at: index, in: friends.count)
                            .blur(radius: !selectedFriend[index] ? 4 : 0)
                            .padding(.horizontal, !selectedFriend[index] ? 16 : 0)
                    }
                }
            }
            .toolbar {
                ToolbarItem {
                    Button {
                        print("Friends view")
                    } label: {
                        Label("Friends", systemImage: "person.2")
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
