//
//  HorizontalLoading.swift
//  SwiftUIAnimation
//
//  Created by 黃柏嘉 on 2025/01/21.
//

import SwiftUI

//橫式Loading
struct HorizontalLoading: View {
    @State var isLoading: Bool = false

    var body: some View {
        VStack {
            
            Text("Loading...")
                .font(.system(size: 25, weight: .bold))
            
            ZStack {
                Rectangle()
                    .fill(.fill)
                    .frame(width: 200, height: 10)
                
                Rectangle()
                    .fill(.green)
                    .frame(width: 20, height: 8)
                    .offset(x: isLoading ? 90 : -90, y: 0)
                    .animation(.linear(duration: 2).repeatForever(autoreverses: false),
                               value: isLoading)
                    .onAppear(perform: {
                        isLoading = true
                    })
            }
        }
        .frame(height: 200)
    }
}
