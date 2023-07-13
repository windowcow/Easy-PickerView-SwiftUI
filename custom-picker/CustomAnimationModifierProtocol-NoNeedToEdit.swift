import SwiftUI

protocol CustomAnimationModifierProtocol: ViewModifier {
    associatedtype L: Labeled
    
    var selectedCase: L { get set }
    var itself: L { get set }
    var caseIterableEnum: L.Type { get set }

    init(selected: Binding<L>, itself: L, caseIterableEnum: L.Type)
}
