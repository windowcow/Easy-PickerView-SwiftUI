# Easy-to-use PickerView
## Create an enum that conforms to the Labeled Protocol


```Swift
enum ExamplePickerOption2: Labeled{
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
                EasyToUseCustomPicker(selectedOption: $p, caseIterableEnum: ExamplePickerOption2.self)
            }
            
            Spacer()
            Text("\(p.hashValue)")
            Spacer()

        }
    }
}
```

## Here is the result.
![Simulator Screen Recording - iPad Pro (12 9-inch) (6th generation) - 2023-07-11 at 20 11 04](https://github.com/windowcow/Easy-PickerView-SwiftUI/assets/65646883/c177157b-effd-4565-8564-923b01a19119)


