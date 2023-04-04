# Custom-List-with-Header-and-Footer-Reusable---SwiftUI

![Simulator Screen Shot - iPhone 14 Pro Max - 2023-04-04 at 16 58 06](https://user-images.githubusercontent.com/129897920/229919405-86eb482a-bec6-483b-ae85-fc96ca8c36d0.png)


# CustomListView for SwiftUI 🚀🌟

A highly reusable and customizable SwiftUI CustomListView component that displays a list with an optional header and footer. Add any SwiftUI view as a header or footer to create unique and engaging list experiences. This component is perfect for enhancing your SwiftUI projects with an interesting and versatile list layout. 😄

# Installation 📥

Download the CustomListView.swift file from this repository.
Add the CustomListView.swift file to your SwiftUI project.
Usage 🎨

# Import the CustomListView component in your SwiftUI file:

` import SwiftUI `

# Create a data model that conforms to the Identifiable protocol:

```
struct ExampleData: Identifiable {
    var id: Int
    var text: String
}

```

# Use the CustomListView in your SwiftUI view:

```
CustomListView(
    data: yourDataArray,
    rowContent: { dataElement in
        // Your custom row view for each data element.
    },
    header: yourHeaderView,
    footer: yourFooterView
)

```

Replace yourDataArray, yourHeaderView, and yourFooterView with the appropriate data array, header view, and footer view values. If you don't want to provide a header or footer view, pass nil for the corresponding parameter.

# Example ✨

Here's a complete example of using CustomListView in a SwiftUI view:

```
import SwiftUI

struct ContentView: View {
    var body: some View {
        CustomListView(
            data: (0..<10).map { ExampleData(id: $0, text: "Row \($0)") },
            rowContent: { exampleData in
                Text(exampleData.text)
            },
            header: Text("Header").font(.largeTitle),
            footer: Text("Footer").font(.largeTitle)
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

```

Simply replace the ExampleData struct with your own data model that conforms to the Identifiable protocol, and update the row content, header, and footer as needed.

# Customization 🛠

You can easily customize the appearance of the CustomListView and its content by modifying the properties of the SwiftUI views you pass for the header, footer, and row content.

For example, you can change the font size and color of the header by modifying the yourHeaderView view:

```
Text("Header")
    .font(.system(size: 32))
    .foregroundColor(.blue)

```
