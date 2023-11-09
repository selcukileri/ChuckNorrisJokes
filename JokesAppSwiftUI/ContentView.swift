//
//  ContentView.swift
//  JokesAppSwiftUI
//
//  Created by Selçuk İleri on 9.11.2023.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var jokesVM = JokesViewModel()
    
    var body: some View {
        NavigationView {
            List(jokesVM.jokes) { element in
                Text(element.joke)
            }.navigationTitle("Jokes App")
        }
    }
}

#Preview {
    ContentView()
}
