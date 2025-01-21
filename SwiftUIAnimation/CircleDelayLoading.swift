//
//  CircleDelayLoading.swift
//  SwiftUIAnimation
//
//  Created by 黃柏嘉 on 2025/01/21.
//

import SwiftUI

//圓點延遲Loading
struct CircleDelayLoading: View {
    @State var isLoading: Bool = false

    var body: some View {
        
        HStack {
            ForEach(0...4, id: \.self) { index in
                Circle()
                    .fill(.green)
                    .frame(width: 20,height: 20)
                    .scaleEffect(isLoading ? 0 : 1)
                    .animation(.linear(duration: 0.6).repeatForever().delay(0.2 * Double(index)),
                               value: isLoading)
                    .onAppear(perform: {
                        isLoading = true
                    })
            }
        }
    }
}
