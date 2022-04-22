import SwiftUI

struct MenuView: View {
    struct test {
        var id = UUID()
        var icon: String
        var text: String
    }
    @State var testList = [test(icon: "person", text: "Profile"),
                           test(icon: "envelope", text: "Message"),
                           test(icon: "gear", text: "Settings")]
    @State var showModal = false
    var body: some View {
        ZStack {
            List {
                ForEach(testList, id: \.id) { test in
                    HStack {
                        Image(systemName: test.icon)
                            .foregroundColor(.gray)
                            .imageScale(.large)
                        Text(test.text)
                            .foregroundColor(.gray)
                            .font(.headline)
                    }
                }
                .onMove{sourceIndices, destinationIndex in
                    self.testList.move(fromOffsets: sourceIndices, toOffset: destinationIndex)
                }
                .onDelete{ indexSet in
                    self.testList.remove(atOffsets: indexSet)
                }
            }
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button(action: {
                        self.showModal = true
                    }, label: {
                        Image(systemName: "plus")
                            .foregroundColor(.white)
                            .font(.system(size: 24))
                    })
                        .frame(width: 50, height: 50)
                        .background(Color.orange)
                        .cornerRadius(25.0)
                        .shadow(color: .gray, radius: 2, x: 2, y: 2)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 16.0, trailing: 16.0))
                        .sheet(isPresented: self.$showModal) {
                            MyModal()
                        }
                }
            }
        }
        .navigationBarTitle("Test", displayMode: .inline)
        .navigationBarItems(trailing: EditButton())
    }
}