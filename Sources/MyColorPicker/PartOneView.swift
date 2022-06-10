import SwiftUI

struct PartOneView: View {
    @Environment(\.colorScheme) var colorScheme
    private var color: Color {
        isFirstSwitchOn ? .red : defaultColor
    }
    
    @State private var isFirstSwitchOn = false
    
    var defaultColor: Color {
        ( colorScheme == .dark ) ? .black : .white
    }
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(color)
            Divider()
            Toggle("Color", isOn: $isFirstSwitchOn)
        }
        .padding()
    }
}
