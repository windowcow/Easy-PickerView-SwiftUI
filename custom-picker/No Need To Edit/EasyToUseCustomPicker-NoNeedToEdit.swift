import SwiftUI

struct EasyToUseCustomPicker<E: Labeled, VM: CustomAnimationModifierProtocol> : View where E.AllCases: RandomAccessCollection, VM.L == E {
    @Binding var selectedCase: E
    
    private let caseIterableEnum: E.Type
    
    private let animationModifier: VM.Type
    @Namespace private var namespace
    
    init(selectedOption: Binding<E>, caseIterableEnum: E.Type, animationModifier: VM.Type) {
        self.caseIterableEnum = caseIterableEnum
        self._selectedCase = selectedOption
        self.animationModifier = animationModifier
    }
    
    @State var rect: CGRect = CGRect()

    
    var body: some View {
        // Maybe you can change this to other Stacks
        ForEach(caseIterableEnum.allCases, id: \.self) { opt in
            opt.label
                .modifier(animationModifier.init(selected: $selectedCase, itself: opt, caseIterableEnum: caseIterableEnum.self) )
            
            // you might need below.
                
                .overlay {
                    if opt == selectedCase {
                        Circle()
                            .scale(3)

                            .stroke(.blue, lineWidth: 5)
                            .matchedGeometryEffect(id: "circle", in: namespace)
                    }
                }
                .onTapGesture {
                    withAnimation(.spring(Spring(duration: 0.5, bounce: 0.4))) {
                        selectedCase = opt
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}


