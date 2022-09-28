//
//  FriendCardView.swift
//  Friendli
//
//  Created by Dominik Hofer on 20.09.22.
//

import SwiftUI

struct FriendCardView: View {
    let friend: Friend
    @Binding var selected: Bool
    
    let cardHeight: CGFloat = 248
    let cornerRadius: CGFloat = 16
    
    var body: some View {
        ZStack {
            if selected {
                Image(friend.posts[0].image)
                    .resizable()
                    .scaledToFill()
                    .saturation(2)
                    .frame(maxWidth: .infinity, maxHeight: selected ? .infinity : cardHeight)
                    .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
                    .blur(radius: 32)
                    .offset(y: 8)
                    .opacity(0.5)
            }
            
            Image(friend.posts[2].image)
                .resizable()
                .scaledToFill()
                .saturation(2)
                .frame(maxWidth: .infinity, maxHeight: selected ? .infinity : cardHeight)
                .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
            
            VStack {
                Spacer()
                
                HStack(alignment: .bottom) {
                    HStack {
                        Image(friend.profilePic)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 48, height: 48)
                        .clipShape(Circle())
                        
                        VStack(alignment: .leading) {
                            Text(friend.name)
                                .bold()
                            
                            Text(friend.accountName)
                                .font(.caption)
                        }
                    }
                    
                    Spacer()
                    
                    HStack {
                        Text(friend.emojis)
                            .font(.caption)
                        
                        Circle()
                            .fill(friend.color)
                            .frame(width: 8, height: 8)
                    }
                    .padding()
                    .background(friend.color.opacity(0.25).blendMode(.multiply))
                    .clipShape(Capsule())
                }
                .padding()
                .background(.black.opacity(0.1))
            }
            .frame(maxWidth: .infinity, maxHeight: selected ? .infinity : cardHeight)
            .background(.ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
        }
        .padding(selected ? 0 : 16)
        .foregroundColor(.white)
        .frame(maxWidth: .infinity, maxHeight: cardHeight)
    }
}

struct FriendCardView_Previews: PreviewProvider {
    static var previews: some View {
        FriendCardView(friend: Friend.example1, selected: .constant(true))
            .monospaced()
    }
}
