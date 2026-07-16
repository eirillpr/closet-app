//
//  HomeScreen.swift
//  closet-app
//
//  Created by Eirill Pile Ragnhildstveit on 16/07/2026.
//

import SwiftUI

// Mock data
struct ClothingItem: Identifiable {
    let id: UUID = UUID()
    let name: String
    let color: Color
    let size: String
    let image: Image
}

let items: [ClothingItem] = [
    ClothingItem(name: "T-shirt", color: Color.red, size: "small", image: Image("t-shirt")),
    ClothingItem(name: "Jeans", color: Color.blue, size: "medium", image: Image("jeans")),
    ClothingItem(name: "Shoes", color: Color.black, size: "large", image: Image("shoes"))
]

struct HomeScreen: View {
    var body: some View {
        ItemDisplay()
    }
}

struct ItemDisplay: View {
    var body: some View {
        ForEach(items) { item in
            /*@START_MENU_TOKEN@*/Text(item.name)/*@END_MENU_TOKEN@*/
        }
    }
}

#Preview {
    HomeScreen()
}
