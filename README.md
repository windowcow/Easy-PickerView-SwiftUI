# Easy-to-use PickerView for **iOS17**
## Create an enum that conforms to the Labeled Protocol
If you're not sure, please follow the provided format carefully.

```Swift
enum ExamplePickerOption2: Labeled {
    typealias TitleType = AnyView
    typealias IconType = AnyView
    
    case Dog
    case Cat
    case Bird
    case Lizard
    case Ant
    
    var label: Label<TitleType, IconType> {
        switch self {
        case .Dog:
            Label(
                title: { AnyView(EmptyView()) },
                icon: { AnyView(Image(systemName: "dog")) }
            )

        case .Cat:
            Label(
                title: { AnyView(EmptyView()) },
                icon: { AnyView(Image(systemName: "cat")) }
            )
            
        case .Bird:
            Label(
                title: { AnyView(EmptyView()) },
                icon: { AnyView(Image(systemName: "bird")) }
            )
        case .Lizard:
            Label(
                title: { AnyView(EmptyView()) },
                icon: { AnyView(Image(systemName: "lizard")) }
            )
        case .Ant:
            Label(
                title: { AnyView(EmptyView()) },
                icon: { AnyView(Image(systemName: "ant")) }
            )
        }
        
    }
}
```
## and simply implement the animation you want to use.

```swift
struct ExampleCustomAnimationModifier<L: Labeled>: CustomAnimationModifierProtocol {
    @Binding var selectedCase: L
    var itself: L
    var caseIterableEnum: L.Type

    init(selected: Binding<L>, itself: L, caseIterableEnum: L.Type) {
        self._selectedCase = selected
        self.itself = itself
        self.caseIterableEnum = caseIterableEnum
    }
    
    // EDIT BELOW TO EDD ANIMATION
    func body(content: Content) -> some View {
        content

            .scaleEffect(selectedCase == itself ? 2.0 : 1.0)
            
    }
}

```

## It's that easy to use.

```swift
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

```

## Here is the result.

![Simulator Screen Recording - iPad Pro (12 9-inch) (6th generation) - 2023-07-19 at 19 10 23](https://github.com/windowcow/Easy-PickerView-SwiftUI/assets/65646883/94d75a6e-c6fb-48cf-b25e-c830797499df)

