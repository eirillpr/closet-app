//
//  ContentView.swift
//  closet-app
//
//  Created by Eirill Pile Ragnhildstveit on 02/07/2026.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]
    
    var body: some View {
        Text("Hello, World!")
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
