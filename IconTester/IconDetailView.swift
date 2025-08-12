import SwiftUI

struct WeightDescription : Identifiable {
    let id = UUID()
    
    let name: String
    let weight: Font.Weight
    
    init(_ name: String, _ weight: Font.Weight) {
        self.name = name
        self.weight = weight
    }
}

let WEIGHTS: [WeightDescription] = [
    WeightDescription("ultralight", .ultraLight),
    WeightDescription("light", .light),
    WeightDescription("thin", .thin),
    WeightDescription("regular", .regular),
    WeightDescription("medium", .medium),
    WeightDescription("heavy", .heavy),
    WeightDescription("bold", .bold)
]

struct IconDetailView: View {
    var icon: IconDescription
    var body: some View {
        List(WEIGHTS) {weight in
            HStack {
                icon.image.font(.system(size: 32, weight: weight.weight))
                Text(weight.name)
            }
        }.navigationTitle(icon.name)
    }
}
#Preview {
    NavigationStack {
        IconDetailView(icon: ICONS[0])
    }
}
