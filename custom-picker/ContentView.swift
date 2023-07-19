
import SwiftUI
import Symbols


struct ContentView: View {
    @State private var selectedOption: ExamplePickerOption = .Cat
    @State var size3: CGRect = CGRect(x: 1, y: 1, width: 3, height: 3)

    var body: some View {
        GeometryReader { geo in
            VStack {
                Spacer()
                Text("\(selectedOption.hashValue)")
                Spacer()
                
                HStack(spacing: 50) {
                    EasyToUseCustomPicker(selectedOption: $selectedOption,
                                          caseIterableEnum: ExamplePickerOption.self,
                                          animationModifier: ExampleCustomAnimationModifier.self)
                }
                .frame(width: geo.size.width)


                Spacer()

            }
        }
        
    }
}

extension View {
    
    @MainActor
    func getFrameRect(rect: Binding<CGRect>, in coordinateSpace: CoordinateSpace) -> some View {
        ZStack {
            self
            GeometryReader { geo in
                self
                    .task {
                        rect.wrappedValue = geo.frame(in: coordinateSpace)
                    }
            }
            
        }
        .fixedSize()
        

    }
}

#Preview {
    ContentView()
}
