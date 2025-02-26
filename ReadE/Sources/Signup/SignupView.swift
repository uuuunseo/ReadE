import SwiftUI

public struct SignupView: View {
    @State var email: String = ""
    @State var password: String = ""
    @State var confirmPassword: String = ""
    @Environment(\.dismiss) var dismiss

    public var body: some View {
        VStack(spacing: 60) {
            VStack(spacing: 55) {
                Text("ReadE")
                    .font(.system(size: 36, weight: .bold))
                    .foregroundStyle(Color("PrimaryColor"))

                VStack(spacing: 24) {
                    InputField(
                        title: "이메일",
                        placeholder: "이메일을 입력해주세요.",
                        text: $email
                    )

                    VStack(spacing: 8) {
                        InputField(
                            title: "비밀번호",
                            placeholder: "비밀번호를 입력해주세요.",
                            text: $password
                        )

                        ReadETextField("비밀번호를 한 번 더 입력해주세요.", text: $confirmPassword)
                    }
                }
            }

            VStack(spacing: 16) {
                ReadEButton(title: "로그인") {
#warning("로그인 버튼 액션 추가")
                }
                
                Button {
                    dismiss()
                } label: {
                    HStack {
                        Text("이미 계정이 있으신가요?")
                            .fontWeight(.medium)
                            .foregroundStyle(Color("Gray2"))
                        
                        Text("로그인")
                            .fontWeight(.semibold)
                    }
                    .font(.system(size: 14))
                }
            }
        }
        .padding(.horizontal, 28)
        .navigationBarBackButtonHidden(true)
    }
}
