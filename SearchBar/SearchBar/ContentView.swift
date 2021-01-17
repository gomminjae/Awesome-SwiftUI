//
//  ContentView.swift
//  SearchBar
//
//  Created by 권민재 on 2021/01/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(0..<20, id: \.self) { num in
                    HStack {
                        Text("\(num)")
                        Spacer()
                    }.padding()
                    Divider()
                        .background(Color.black)
                }
            }
            .navigationTitle("Food")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
