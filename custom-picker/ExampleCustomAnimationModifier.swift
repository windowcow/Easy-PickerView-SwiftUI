import SwiftUI

struct ExampleCustomAnimationModifier<L: Labeled>: CustomAnimationModifierProtocol {
    @Binding var selectedCase: L
    var itself: L
    var caseIterableEnum: L.Type

    init(selected: Binding<L>, itself: L, caseIterableEnum: L.Type) {
        self._selectedCase = selected
        self.itself = itself
        self.caseIterableEnum = caseIterableEnum
    }
    func body(content: Content) -> some View {
        content
            .scaleEffect(selectedCase == itself ? 2.0 : 1.0)
            
    }
}
