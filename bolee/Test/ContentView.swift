import SwiftUI

struct ContentView: View {
    var body: some View {
        MainView()
    }
}

struct MainView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("test")
                Spacer()
            }
            .navigationBarItems(
                leading: NavigationLink(destination: MenuView(), label: {
                    Image(systemName: "line.horizontal.3")
                        .imageScale(.large)
                })
            )
        }
    }
}

struct Content_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
