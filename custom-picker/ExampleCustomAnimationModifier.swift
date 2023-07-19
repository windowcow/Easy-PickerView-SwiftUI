import SwiftUI


struct ExampleCustomAnimationModifier<L: Labeled>: CustomAnimationModifierProtocol {
    @Binding var selectedCase: L
    @Namespace var namespace
    var itself: L
    var caseIterableEnum: L.Type
    
    var isSelected: Bool {
        selectedCase == itself
    }
    
    init(selected: Binding<L>, itself: L, caseIterableEnum: L.Type) {
        self._selectedCase = selected
        self.itself = itself
        self.caseIterableEnum = caseIterableEnum
    }
    func body(content: Content) -> some View {
        content
            .scaleEffect(isSelected ? 2.0 : 1.0)
            
    }
}

#Preview {
    ContentView()
}
