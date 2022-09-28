//
//  FriendCardView.swift
//  Friendli
//
//  Created by Dominik Hofer on 20.09.22.
//

import SwiftUI

struct FriendCardView: View {
    let friend: Friend
    
    var body: some View {
        GeometryReader { proxy in
            let size = CGSize(width: proxy.size.width, height: proxy.size.width / 8 * 5)
            
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .fill(Color.ultimateGreen)
                
                Image(friend.posts[0].image)
                    .resizable()
                    .scaledToFill()
                    .blur(radius: 4)
                    .padding(-32)
                
                
                Color.white.opacity(0.5)
                
                LinearGradient(gradient: Gradient(colors: [friend.color, .clear, .clear]), startPoint: .bottom, endPoint: .top)
                    .blendMode(.multiply)
                
                VStack {
                    Spacer()
                    
                    HStack {
                        Image(friend.profilePic)
                            .resizable()
                            .frame(width: 40, height: 40)
                            .cornerRadius(40)
                        
                        VStack(alignment: .leading) {
                            Text(friend.name)
                                .bold()
                            
                            Text(friend.accountName)
                                .font(.subheadline)
                        }
                        .padding(.leading, 8)
                        
                        Spacer()
                        
                        HStack {
                            Text(friend.emojis)
                            
                            Circle()
                                .fill(friend.color)
                                .frame(width: 8, height: 8)
                        }
                        .padding(8)
                        .background(
                            Capsule()
                                .fill(.white.opacity(0.25))
                        )
                    }
                    .padding()
                }
                .frame(width: size.width, height: size.width / 8 * 5)
            }
            .frame(width: size.width, height: size.width / 8 * 5)
            .mask(RoundedRectangle(cornerRadius: 16))
        }
    }
}

struct FriendCardView_Previews: PreviewProvider {
    static var previews: some View {
        FriendCardView(friend: Friend.example1)
            .monospaced()
    }
}
