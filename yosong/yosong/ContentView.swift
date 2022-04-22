//
//  ContentView.swift
//  yosong
//
//  Created by 송영모 on 2022/04/22.
//

import SwiftUI

struct ContentView: View {
    @State var showMenu = false
    @State var count = 0
    var body: some View {
        GeometryReader { geometry in
            MainView(showMenu: self.$showMenu, count: self.$count)
                .frame(width: geometry.size.width, height: geometry.size.height)
                .offset(x: self.showMenu ? geometry.size.width : 0)
            if self.showMenu {
                MenuView(showMenu: self.$showMenu, count: self.$count)
                    .frame(width: geometry.size.width)
            }
        }
    }
}

struct Content_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
