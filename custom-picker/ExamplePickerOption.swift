//
//  ExamplePickerOption.swift
//  custom-picker
//
//  Created by windowcow on 7/11/23.
//

import SwiftUI

enum ExamplePickerOption: Labeled {
    typealias TitleType = AnyView
    typealias IconType = AnyView
    
    case Source
    case Summary
    case Quiz
    
    @ViewBuilder var label: some View {
        switch self {
        case .Source:
            Label(
                title: { AnyView(EmptyView()) },
                icon: { AnyView(Image(systemName: "book.pages")) }
            )

        case .Summary:
            Label(
                title: { AnyView(EmptyView()) },
                icon: { AnyView(Image(systemName: "book.pages")) }
            )
            
        case .Quiz:
            Label(
                title: { AnyView(EmptyView()) },
                icon: { AnyView(Image(systemName: "rectangle.on.rectangle.angled")) }
            )
        }
    }
}

enum ExamplePickerOption2: Labeled{
    typealias TitleType = AnyView
    typealias IconType = AnyView
    
    case Dog
    case Cat
    case Bird
    case Lizard
    case Ant
    
    @ViewBuilder var label: some View {
        switch self {
        case .Dog:
            Label(
                title: { AnyView(EmptyView()) },
                icon: { AnyView(Image(systemName: "dog")) }
            )

        case .Cat:
            Label(
                title: { AnyView(EmptyView()) },
                icon: { AnyView(Image(systemName: "cat")) }
            )
            
        case .Bird:
            Label(
                title: { AnyView(EmptyView()) },
                icon: { AnyView(Image(systemName: "bird")) }
            )
        case .Lizard:
            Label(
                title: { AnyView(EmptyView()) },
                icon: { AnyView(Image(systemName: "lizard")) }
            )
        case .Ant:
            Label(
                title: { AnyView(EmptyView()) },
                icon: { AnyView(Image(systemName: "ant")) }
            )
        }
        
    }
}
