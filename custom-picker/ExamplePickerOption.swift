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
    
    var label: Label<TitleType, IconType> {
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

enum ExamplePickerOption2: Labeled {
    typealias TitleType = AnyView
    typealias IconType = AnyView
    
    case Dog
    case Cat
    case Cow
    case Tiger
    case Lion
    
    var label: Label<TitleType, IconType> {
        switch self {
        case .Dog:
            Label(
                title: { AnyView(EmptyView()) },
                icon: { AnyView(Image(systemName: "book.pages")) }
            )

        case .Cat:
            Label(
                title: { AnyView(EmptyView()) },
                icon: { AnyView(Image(systemName: "book.pages")) }
            )
            
        case .Cow:
            Label(
                title: { AnyView(EmptyView()) },
                icon: { AnyView(Image(systemName: "rectangle.on.rectangle.angled")) }
            )
        case .Tiger:
            Label(
                title: { AnyView(EmptyView()) },
                icon: { AnyView(Image(systemName: "rectangle.on.rectangle.angled")) }
            )
        case .Lion:
            Label(
                title: { AnyView(EmptyView()) },
                icon: { AnyView(Image(systemName: "rectangle.on.rectangle.angled")) }
            )
        }
        
    }
}
