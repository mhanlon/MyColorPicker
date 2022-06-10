import SwiftUI

@available(iOS 14.0, *)
public struct ColorPickerView: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var color: Color = .white
    
    public init() {}

    public var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(color)
            Divider()
            ColorPicker("Color", selection: $color)
                .onAppear { 
                    color = ( colorScheme == .dark ) ? .black : .white
                }
                .padding()
            }
        .padding()
    }
}

@available(iOS 14.0, *)
struct ColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView()
    }
}
