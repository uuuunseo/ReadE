import SwiftUI

struct MainView: View {
    @State var level: Int = 1
    @State var name: String = "을사"
    var page: Float = 1000
    var total: Float = 1999

    var body: some View {
        VStack(spacing: 60) {
            VStack(spacing: 55) {
                Text("Lv.\(level) \(name)")
                    .foregroundStyle(Color("PrimaryColor"))
                    .font(.system(size: 36, weight: .heavy))
                
                Image("Depth1")
                    .resizable()
                    .frame(height: 200)
                    .padding(.horizontal, 100)
                
                VStack(spacing: 8) {
                    VStack(alignment: .trailing) {
                        Text("\(String(format: "%.f", (page / total) * 100))%")
                            .font(.system(size: 16, weight: .heavy))
                        
                        ProgressView(value: page, total: total)
                            .progressViewStyle(LinearProgressViewStyle(tint: Color("PrimaryColor")))
                            
                    }
                    .padding(.horizontal, 50)

                    HStack(spacing: 0) {
                        Text("다음 레벨까지 ")

                        Text(String(format: "%.f", total - page))
                            .fontWeight(.bold)

                        Text("쪽 남았어요!")
                    }
                    .font(.system(size: 16))
                }
            }

            VStack(spacing: 16) {
                ReadEButton(title: "도서 기록하기") {
#warning("도서기록 페이지 이동")
                }

                ReadEButton(title: "기록 보기") {
#warning("기록보기 페이지 이동")
                }
            }
        }
        .padding(.horizontal, 28)
    }
}
