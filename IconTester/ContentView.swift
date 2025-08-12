import SwiftUI

struct IconDescription: Identifiable {
    let id = UUID()
    
    let isSystem: Bool
    let name: String
    
    var image: Image { get {
        if self.isSystem {
            Image(systemName: self.name)
        } else {
            Image(self.name)
        }
    }}
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
        HStack {
            icon.image.font(.system(size: 48, weight: .regular))
            Text(icon.name)
        }
    }
}
#Preview {
    ContentView()
}
