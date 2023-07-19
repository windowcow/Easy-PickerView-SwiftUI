//
//  ExamplePickerOption.swift
//  custom-picker
//
//  Created by windowcow on 7/11/23.
//

import SwiftUI

enum ExamplePickerOption: Labeled{
    case Dog
    case Cat
    case Bird
    case Lizard
    case Ant
    
    @ViewBuilder var label: some View {
        switch self {
        case .Dog:
            Label(
                title: { EmptyView() },
                icon: { Image(systemName: "dog") }
            )

        case .Cat:
            Label(
                title: { EmptyView() },
                icon: { Image(systemName: "cat") }
            )
            
        case .Bird:
            Label(
                title: { EmptyView() },
                icon: { Image(systemName: "bird") }
            )
        case .Lizard:
            Label(
                title: { EmptyView() },
                icon: { Image(systemName: "lizard") }
            )
        case .Ant:
            Label(
                title: { EmptyView() },
                icon: { Image(systemName: "ant") }
            )
        }
        
    }
}
