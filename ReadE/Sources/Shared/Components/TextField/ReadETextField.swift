import SwiftUI

public struct ReadETextField: View {
    let placeholder: String
    @Binding var text: String

    public init(
        _ placeholder: String = "",
        text: Binding<String>
    ) {
        self.placeholder = placeholder
        self._text = text
    }
    
    public var body: some View {
        VStack {
            TextField(placeholder, text: $text)
                .padding(.vertical, 15)
                .padding(.horizontal, 16)
                .overlay {
                    RoundedRectangle(cornerRadius: 4)
                        .strokeBorder(Color("Gray1"))
                }
        }
    }
}
