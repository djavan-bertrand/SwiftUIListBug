//
//  ContentView.swift
//  TestSwiftUI
//
//  Created by Djavan Bertrand on 13/12/2019.
//  Copyright © 2019 Djavan Bertrand. All rights reserved.
//

import SwiftUI

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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
