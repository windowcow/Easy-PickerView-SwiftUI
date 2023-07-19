import SwiftUI

struct EasyToUseCustomPicker<E: Labeled, VM: CustomAnimationModifierProtocol> : View where E.AllCases: RandomAccessCollection, VM.L == E {
    @Binding var selectedCase: E
    
    private let caseIterableEnum: E.Type
    
    private let animationModifier: VM.Type
    
    
    init(selectedOption: Binding<E>, caseIterableEnum: E.Type, animationModifier: VM.Type) {
        self.caseIterableEnum = caseIterableEnum
        self._selectedCase = selectedOption
        self.animationModifier = animationModifier
    }
    
    var body: some View {
        // Maybe you can change this to other Stacks
        ForEach(caseIterableEnum.allCases, id: \.self) { opt in
            opt.label
                .modifier(animationModifier.init(selected: $selectedCase, itself: opt, caseIterableEnum: caseIterableEnum.self) )
            
            // you might need below.
                .onTapGesture {
                    withAnimation(.spring) {
                        selectedCase = opt
                    }
                }
        }
    }
}

