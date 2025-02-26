import SwiftUI

public struct ReadEButton: View {
    let title: String
    let style: ReadEButtonStyleType
    let action: () -> Void

    public init(
        title: String = "",
        style: ReadEButtonStyleType = .default,
        action: @escaping () -> Void = {}
    ) {
        self.title = title
        self.style = style
        self.action = action
    }

    public var body: some View {
        Button {
            action()
        } label: {
            HStack {
                Spacer()
                
                Text(title)
                    .font(.system(size: 18, weight: .bold))
                    .foregroundStyle(.white)
                
                Spacer()
            }
            .padding(.vertical, style == .default ? 15 : 8)
            .background(Color("PrimaryColor"))
            .cornerRadius(4)
        }
    }
}
