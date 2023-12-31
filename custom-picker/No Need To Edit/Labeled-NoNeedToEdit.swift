//
//  Labeled.swift
//  custom-picker
//
//  Created by windowcow on 7/11/23.
//

import SwiftUI

protocol Labeled: CaseIterable, Hashable {
    associatedtype LabelType: View
    
    @ViewBuilder var label: LabelType { get }
}
