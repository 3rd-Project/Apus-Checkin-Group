//
//  ContentView.swift
//  yosong
//
//  Created by 송영모 on 2022/04/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Text("캘린더 페이지")
                .navigationBarItems(
                    leading: NavigationLink(destination: MenuView()) {
                        Image(systemName: "line.3.horizontal")
                    }
                )
        }
    }
}

struct Content_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
