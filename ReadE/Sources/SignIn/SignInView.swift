import SwiftUI

struct SignInView: View {
    @State var email: String = ""
    @State var password: String = ""

    var body: some View {
        VStack(spacing: 60) {
            VStack(spacing: 55) {
                Text("ReadE")
                    .font(.system(size: 36, weight: .bold))
                    .foregroundStyle(Color("PrimaryColor"))
                
                VStack(spacing: 24) {
                    inputField(
                        title: "이메일",
                        placeholder: "이메일을 입력해주세요.",
                        text: $email
                    )
                    
                    inputField(
                        title: "비밀번호",
                        placeholder: "비밀번호를 입력해주세요.",
                        text: $password
                    )
                }
            }
            
            VStack(spacing: 16) {
                Button {
#warning("로그인 액션 추가")
                } label: {
                    HStack {
                        Spacer()
                        
                        Text("로그인")
                            .font(.system(size: 18, weight: .bold))
                            .foregroundStyle(.white)
                        
                        Spacer()
                    }
                    .padding(.vertical, 15)
                    .background(Color("PrimaryColor"))
                    .cornerRadius(4)
                }
            }

            Button {
#warning("회원가입 페이지 이동 추가")
            } label: {
                HStack {
                    Text("ReadE가 처음이신가요?")
                        .fontWeight(.medium)
                        .foregroundStyle(Color("Gray2"))

                    Text("회원가입")
                        .fontWeight(.semibold)
                }
                .font(.system(size: 14))
            }
        }
        .padding(.horizontal, 28)
    }

    @ViewBuilder
    func inputField(
        title: String,
        placeholder: String,
        text: Binding<String>
    ) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.system(size: 16, weight: .bold))

            ReadETextField(placeholder, text: text)
        }
    }
}

#Preview {
    SignInView(email: "", password: "")
}
