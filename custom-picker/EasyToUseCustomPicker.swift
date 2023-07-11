import SwiftUI

struct EasyToUseCustomPicker<E: Labeled > : View where E.AllCases: RandomAccessCollection {
    @Binding var selected: E
    let currentOption: E.Type
    
    init(selectedOption: Binding<E>, caseIterableEnum: E.Type) {
        self._selected = selectedOption
        self.currentOption = caseIterableEnum
    }
    
    var body: some View {
        // Maybe you can change this to other Stacks
        ForEach(currentOption.allCases, id: \.self) { opt in
            opt.label
                .customAnimation(myValue: opt.self, selectedValue: $selected)
        }

    }
}
