//
//  MainView.swift
//  yosong
//
//  Created by 송영모 on 2022/04/22.
//

import SwiftUI

struct MainView: View {
    @Binding var showMenu: Bool
    @Binding var count: Int
    var body: some View {
        VStack (alignment: .leading) {
            HStack (alignment: .top) {
                Button(action: {
                    withAnimation {
                        self.showMenu = true
                    }
                }) {
                    Image(systemName: "line.horizontal.3")
                        .imageScale(.large)
                }
                .padding(.top, 17)
                .padding(.leading, 23)
                Spacer()
            }
            Spacer()
        }
    }
}

//struct MainView_Previews: PreviewProvider {
//    static var previews: some View {
//        MainView()
//    }
//}
