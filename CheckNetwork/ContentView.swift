//
//  ContentView.swift
//  CheckNetwork
//
//  Created by Dhanraj Sudhir Chavan on 23/04/20.
//  Copyright © 2020 Dhanraj Chavan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showSheet = false

    var body: some View {
        NavigationView {
            VStack {
                Text("Checking Internet Status")
            }
            .navigationBarTitle("Internet Checker")
            .navigationBarItems(trailing:
                Button(action: {
                    print("Add Button Pressed")
                }) {
                    Image(systemName: "plus")
                        .font(.title)
                }
            )
        }
        .sheet(isPresented: self.$showSheet) {
            Text("Do Something On Internet")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
