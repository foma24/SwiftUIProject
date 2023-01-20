import SwiftUI

struct ChooseUniverse: Identifiable {
    var id: String {
        name
    }
    let name: String
    let color: Color
}

struct ContentView: View {
    
    @State private var isPushEnabled = false
    @State private var speed = 50.0
    @State private var sliderIsEdited = false
    @State private var selectedUniverse: ChooseUniverse?
    @State private var universeIsSelected = false
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    Toggle(isOn: $isPushEnabled) {
                        Text("First")
                    }
                    Toggle(isOn: $isPushEnabled) {
                        Text("Second")
                    }
                } header: {
                    Text("Section")
                        .font(.system(size: 16, weight: .bold))
                        .foregroundColor(Color.blue)
                }
                
                Section {
                    Toggle(isOn: $isPushEnabled) {
                        Text("Third")
                    }
                }
                
                Section {
                    VStack {
                        Slider(value: $speed, in: 0...100) { editing in
                            sliderIsEdited = editing
                        }
                        Text("Speed \(speed)")
                            .foregroundColor(sliderIsEdited ? .red : .red)
                    }
                }
                
                Section {
                    VStack {
                        Text("Choose your side:")
                        Spacer()
                        HStack() {
                            Spacer()
                            Button("Marvel") {
                                selectedUniverse = .init(name: "Marvel", color: .red)
                                universeIsSelected = true
                            }
                            .buttonStyle(BorderlessButtonStyle()) // иначе тригер всей секции и всех кнопок в ней
                            Spacer()
                            Button("DC") {
                                selectedUniverse = .init(name: "DC", color: .blue)
                                universeIsSelected = true
                            }
                            .buttonStyle(BorderlessButtonStyle())
                            Spacer()
                        }
                        .alert(item: $selectedUniverse) { universe in
                            Alert(title: Text(universe.name), message: Text("Choose is made"), dismissButton: .default(Text("OK")))
                        }
                    }
                    .background(universeIsSelected ? selectedUniverse?.color : .white)
                }
            }
            .navigationTitle("Homepage")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
