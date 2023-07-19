
import SwiftUI
import Symbols


struct ContentView: View {
    @State private var p: ExamplePickerOption2 = .Cat

    var body: some View {
        VStack {
            Spacer()
            Text("\(p.hashValue)")
            Spacer()

            HStack {
                EasyToUseCustomPicker(selectedOption: $p, caseIterableEnum: ExamplePickerOption2.self, animationModifier: ExampleCustomAnimationModifier.self)
            }

            Spacer()
            Text("\(p.hashValue)")
            Spacer()

        }
    }
}

