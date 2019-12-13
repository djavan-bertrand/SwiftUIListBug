# SwiftUI List bug

This is a project to show how the behavior of a `List` embedded in a `TabView` which is itself embedded in a NavigationView is bugged when the title of the navigation bar is large.

When scrolling up, the title is shrinking to be a `normal` title, but the List bounds do not change to fill this new extra space.

Here is the bug:

![Alt Text](https://github.com/djavan-bertrand/SwiftUIListBug/raw/master/Resources/bug.gif)

## How to reproduce

Here is the code that you can use to reproduce the bug:

```
struct ContentView: View {
    @State private var selection = 0

    var body: some View {
        NavigationView {
            TabView(selection: $selection) {
                List {
                    Text("1")
                    Text("2")
                    Text("3")
                    Text("4")
                }.tabItem { Text("first") }.tag(0)

                Text("TODO Lieu").tabItem { Text("second") }.tag(1)

                Text("TODO A propos").tabItem { Text("third") }.tag(2)

            }.navigationBarTitle(Text("TestNav"), displayMode: .large)
        }
    }
}
```