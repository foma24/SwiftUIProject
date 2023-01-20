import SwiftUI

struct ProfileView: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
    
    private var logoWidth: CGFloat = UIScreen.main.bounds.width / 3
    private var logoHeight: CGFloat = UIScreen.main.bounds.width / 3
    
    private var buttonWidth: CGFloat = UIScreen.main.bounds.width - 64
    private var buttonHeight: CGFloat = 52
    
    var body: some View {
        VStack {
            Spacer()
            
            Image("vkLogo")
                .resizable()
                .frame(width: logoWidth, height: logoHeight)
                .aspectRatio(contentMode: .fit)
            
            Spacer()
            
            VStack {
                TextField("Username/Login", text: $username)
                SecureField("Password", text: $password)
            }
            .padding(EdgeInsets(top: 0, leading: 32, bottom: 0, trailing: 32))
            .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Spacer()
                .frame(height: 20.0)
            
            Button {
                debugPrint("Login press")
            } label: {
                Text("Log in")
                    .frame(width: buttonWidth, height: buttonHeight)
                    .foregroundColor(.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(Color.white, lineWidth: 2)
                    )
            }
            .background(Color.blue)
            .cornerRadius(16)
            
            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
