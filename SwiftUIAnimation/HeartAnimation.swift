//
//  HeartAnimation.swift
//  SwiftUIAnimation
//
//  Created by 黃柏嘉 on 2025/01/21.
//

import SwiftUI

//隱式動畫與顯示動畫
struct HeartAnimation: View {
    
    @State var circleColorChanged: Bool = false
    @State var heartColorChanged: Bool = false
    @State var heartScaleChanged: Bool = false
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .fill(circleColorChanged ? .gray : .red)
                
                Image(systemName: "heart.fill")
                    .foregroundStyle(heartColorChanged ? .red : .white)
                    .font(.system(size: 100))
//                    .animation(.spring(response: 0.3, dampingFraction: 0.1, blendDuration: 0.1), value: heartScaleChanged)
                    .scaleEffect(heartScaleChanged ? 1.0 : 0.5)
                
            }
            .onTapGesture {
                    circleColorChanged.toggle()
                    heartColorChanged.toggle()
                    heartScaleChanged.toggle()
            }
            .frame(height: 200)
            
            Text("隱式動畫")
            
            ZStack {
                Circle()
                    .fill(circleColorChanged ? .gray : .red)
                
                Image(systemName: "heart.fill")
                    .foregroundStyle(heartColorChanged ? .red : .white)
                    .font(.system(size: 100))
                    .scaleEffect(heartScaleChanged ? 1.0 : 0.5)
                
            }
            .onTapGesture {
                withAnimation(.spring(response: 0.3, dampingFraction: 0.3, blendDuration: 0.3)) {
                    circleColorChanged.toggle()
                    heartColorChanged.toggle()
                }
                
                heartScaleChanged.toggle()
            }
            .frame(height: 200)
            
            Text("顯式動畫")
        }
    }
}
