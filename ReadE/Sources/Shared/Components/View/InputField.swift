import SwiftUI

public struct InputField: View {
    var title: String
    var placeholder: String
    @Binding var text: String
    
    public init(
        title: String = "",
        placeholder: String = "",
        text: Binding<String>
    ) {
        self.title = title
        self.placeholder = placeholder
        self._text = text
    }

    public var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.system(size: 16, weight: .bold))
            
            ReadETextField(placeholder, text: $text)
        }
    }
}
