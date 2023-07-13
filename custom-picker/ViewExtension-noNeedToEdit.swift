
<<<<<<< HEAD
=======
import SwiftUI

extension View {
    func customAnimation<E: Equatable>(myValue myVal: E, selectedValue selectedVal: Binding<E>) -> some View {
        modifier(CustomAnimationModifier(myValue: myVal, selectedValue: selectedVal))
    }
}
>>>>>>> 9ae735e (asdf)
