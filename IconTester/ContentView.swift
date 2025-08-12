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
                    IconRow(icon: icon)
                }
            }
        }
    }
}

struct IconRow : View {
    var icon: IconDescription
    var body: some View {
        if icon.isSystem {
            Image(systemName: icon.name)
        } else {
            Image(uiImage: UIImage(named: icon.name)!)
        }
    }
}
#Preview {
    ContentView()
}
