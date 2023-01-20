import SwiftUI

@main
struct SwiftUIDemoApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .tabItem {
                        Label("Homepage", systemImage: "house.fill")
                    }
                ProfileView()
                    .tabItem {
                        Label("Profile", systemImage: "person.fill")
                    }
                CharactersListView()
                    .tabItem {
                        Label("Characters", systemImage: "list.star")
                    }
            }
        }
    }
}
