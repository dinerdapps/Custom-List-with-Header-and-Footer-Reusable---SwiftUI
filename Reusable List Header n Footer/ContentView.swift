//
//  ContentView.swift
//  Reusable List Header n Footer
//
//  Created by Chad on 4/4/23.
//

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
