//
//  File.swift
//  SwiftUIAnimation
//
//  Created by 黃柏嘉 on 2025/01/21.
//

import SwiftUI

struct DetailTranstion: View {
    @State var isShow: Bool = false

    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 25.0)
                .fill(.green)
                .frame(width: 250, height: 250)
                .overlay {
                    Text("Show Details")
                }
                
            
            if isShow {
                
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(.purple)
                    .frame(width: 250, height: 250)
                    .overlay {
                        Text("Details")
                    }
                    .transition(.asymmetric(insertion: .slide,
                                            removal: .scale))
            }
        }
        .foregroundStyle(.white)
        .font(.system(size: 30))
        .fontWeight(.bold)
        .onTapGesture {
            withAnimation(.spring(response: 1,
                                  dampingFraction: 0.5,
                                  blendDuration: 0.3))
            {
                isShow.toggle()
            }
        }
    }
}
