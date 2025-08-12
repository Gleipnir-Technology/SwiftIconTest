import SwiftUI

struct IconDescription: Identifiable {
    let id = UUID()
    
    let isSystem: Bool
    let name: String
}

let ICONS = [
    IconDescription(isSystem: true, name: "calendar.and.person"),
    IconDescription(isSystem: true, name: "shareplay"),
    IconDescription(isSystem: false, name: "mosquito.sideview"),
]
struct ContentView: View {
    var body: some View {
        NavigationStack {
            List(ICONS) { icon in
                NavigationLink(destination: IconDetailView(icon: icon)) {
                    Image(systemName: icon.name)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
