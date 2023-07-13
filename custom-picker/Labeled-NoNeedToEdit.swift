//
//  Labeled.swift
//  custom-picker
//
//  Created by windowcow on 7/11/23.
//

import SwiftUI

protocol Labeled: CaseIterable, Hashable {
    associatedtype TitleType: View
    associatedtype IconType: View
    
    var label: Label<TitleType, IconType> { get }
}
