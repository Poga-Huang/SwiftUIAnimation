//
//  ContentView.swift
//  SwiftUIAnimation
//
//  Created by 黃柏嘉 on 2025/01/21.
//

import SwiftUI

enum Status: String {
    case Start
    case Loading
    case Complete
    
    var title: String {
        switch self {
        case .Start:    return "Submit"
        case .Loading:  return "Processing"
        case .Complete: return "Done"
        }
    }
    
    var style: Color {
        switch self {
        case .Start:    return .green
        case .Loading:  return .green
        case .Complete: return .red
        }
    }
}

struct ContentView: View {
    
    @State var status: Status = .Start
    
    var body: some View {
        Button(action: {
            withAnimation(.spring(dampingFraction: 0.3)) {
                startProcess()
            }
        }, label: {
            HStack(alignment: .center, spacing: 8) {
                
                if status == .Loading {
                    CircleLoding().frame(width: 20, height: 20)
                }
                
                Text(status.title).foregroundStyle(.white)

            }
            .frame(maxWidth: 200, maxHeight: 50)
        })
        .background(status.style)
        .clipShape(.capsule)
    }
    
    private func startProcess() {
        if status == .Complete {
            status = .Start
        }
        else {
            status = .Loading
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 4.0, execute: {
                status = .Complete
            })
        }
    }
}

#Preview {
    ContentView()
}
