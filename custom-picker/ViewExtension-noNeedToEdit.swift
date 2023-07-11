//
//  ViewExtension.swift
//  custom-picker
//
//  Created by windowcow on 7/11/23.
//

import SwiftUI

extension View {
    func customAnimation<E: Equatable>(myValue myVal: E, selectedValue selectedVal: Binding<E>) -> some View {
        modifier(CustomAnimationModifier(myValue: myVal, selectedValue: selectedVal))
    }
}
