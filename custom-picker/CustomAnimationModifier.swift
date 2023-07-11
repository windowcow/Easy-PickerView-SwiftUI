import SwiftUI

struct CustomAnimationModifier<E: Equatable>: ViewModifier {
    var currentItemOptionValue: E
    @Binding var selectedOptionValue: E
    var isSelected: Bool {
        currentItemOptionValue == selectedOptionValue
    }
    
    init(myValue: E, selectedValue: Binding<E>) {
        self.currentItemOptionValue = myValue
        self._selectedOptionValue = selectedValue
    }
    
    func body(content: Content) -> some View {
//        Example.
        VStack {
            ZStack {
                content
                    .padding()
                    .foregroundStyle( isSelected ? .green : .black )
                    .symbolEffect(.bounce.up, value: isSelected)
                    .bold(isSelected)
                    .padding(3)
                    .scaleEffect(isSelected ? 2.0 : 1.0)
                    .animation(.bouncy, value: isSelected)

                Circle()
                    .stroke(.green, lineWidth: 5)
                    .frame(width: isSelected ? 100 : 0)
                    .animation(.easeInOut, value: isSelected)

            }
            .frame(width: 100, height: 100)
            
            Rectangle().frame(width: isSelected ? 150 : 0, height: 5)
                .animation(.easeInOut, value: isSelected)

        }
//          IMPORTANT NOT TO EDIT .onTabGesture WITHOUT CONSIDERATION
        .onTapGesture {
            isSelected ? {}() : {selectedOptionValue = currentItemOptionValue}()
        }
    }
}
