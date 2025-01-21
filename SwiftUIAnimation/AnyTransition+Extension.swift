//
//  AnyTransition+Extension.swift
//  SwiftUIAnimation
//
//  Created by 黃柏嘉 on 2025/01/21.
//

import SwiftUI

extension AnyTransition {
    static var slideScale: AnyTransition {
        return .slide.combined(with: .scale)
    }
    
    static var slideInsertScaleRemove: AnyTransition {
        return .asymmetric(insertion: .slide, removal: .scale)
    }
}
