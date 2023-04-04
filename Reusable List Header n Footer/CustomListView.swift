//
//  CustomListView.swift
//  Reusable List Header n Footer
//
//  Created by Chad on 4/4/23.
//

import SwiftUI

// A reusable CustomListView that accepts any SwiftUI view as an optional header and footer.
struct CustomListView<Header: View, Footer: View, Data: Identifiable, RowContent: View>: View {
    // The array of data to display in the list.
    var data: [Data]
    // The closure that creates a row view for each element in the data array.
    var rowContent: (Data) -> RowContent
    // The optional header view.
    var header: Header?
    // The optional footer view.
    var footer: Footer?
    
    // The main body of the CustomListView.
    var body: some View {
        // A VStack to arrange the content vertically.
        VStack {
            // Display the optional header view if it's provided.
            if let header = header {
                header
            }
            
            // Display the list with the data and row content.
            List(data, rowContent: rowContent)
            
            // Display the optional footer view if it's provided.
            if let footer = footer {
                footer
            }
        }
    }
}

// A preview struct to display the CustomListView in Xcode's preview pane.
struct CustomListView_Previews: PreviewProvider {
    static var previews: some View {
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

