//
//  CircleLoding.swift
//  SwiftUIAnimation
//
//  Created by 黃柏嘉 on 2025/01/21.
//

import SwiftUI

//環狀Loading
struct CircleLoding: View {
    @State var isLoading: Bool = false

    var body: some View {
        ZStack {
            Circle()
                .stroke(.fill, lineWidth: 2)
            
            Circle()
                .trim(from: 0.0, to: 0.2)
                .stroke(.white, lineWidth: 2)
                .rotationEffect(.degrees(isLoading ? 360 : 0))
                .animation(.linear(duration: 1).repeatForever(autoreverses: false),
                           value: isLoading)
                .onAppear(perform: {
                    isLoading = true
                })
        }
    }
}
