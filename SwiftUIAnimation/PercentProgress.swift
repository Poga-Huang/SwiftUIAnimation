//
//  PercentProgress.swift
//  SwiftUIAnimation
//
//  Created by 黃柏嘉 on 2025/01/21.
//

import SwiftUI

//進度百分比
struct PercentProgress: View {
    
    @State var percent: CGFloat = 0

    var body: some View {
        ZStack {
            
            Circle().stroke(.fill, lineWidth: 20)
            
            Circle()
                .trim(from: 0, to: percent)
                .stroke(.green, lineWidth: 20)
                .rotationEffect(.degrees(270))
                .animation(.linear, value: percent)
                .onAppear(perform: {
                    Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
                        
                        if percent < 1 {
                            percent += 0.05
                        }
                        else {
                            timer.invalidate()
                        }
                    }
                })
            
            Text("\(Int(percent*100))%")
                .font(.system(size: 25, weight: .bold))
        }
        .frame(width: 200)
    }
}

