//  SendMoneyView.swift
//  PaymentDetailsList
//  Created by Sumit on 10/09/24.

import SwiftUI

struct SendMoneyView: View {
    
    @State private var username: String = "$1,540"
    @State private var degrees = 0

    var body: some View {
        HStack {
            VStack {
                HStack {
                    TextField(
                        "User name (email address)",
                        text: $username
                    )
                    .font(.system(size: 30, weight: .bold, design: .default))
                    .foregroundStyle(LinearGradient(
                       gradient: Gradient(colors: [.init(red: 239.0/255.0, green: 203.0/255.0, blue: 146.0/255.0), .init(red: 219.0/255.0, green: 168.0/255.0, blue: 106.0/255.0)]), startPoint: .leading, endPoint: .bottom))
                   }
                HStack {
                    Text("No commission")
                        .font(.system(size: 14, weight: .semibold, design: .default))
                        .foregroundStyle(LinearGradient(
                           gradient: Gradient(colors: [.init(red: 239.0/255.0, green: 203.0/255.0, blue: 146.0/255.0), .init(red: 219.0/255.0, green: 168.0/255.0, blue: 106.0/255.0)]), startPoint: .leading, endPoint: .bottom))
                    Spacer()
                }
            }
            HStack {
                Button {
                    print("Image tapped!")
                } label: {
                     Text("Send Money")
                        .foregroundStyle(LinearGradient(
                           gradient: Gradient(colors: [.init(red: 239.0/255.0, green: 203.0/255.0, blue: 146.0/255.0), .init(red: 219.0/255.0, green: 168.0/255.0, blue: 106.0/255.0)]), startPoint: .leading, endPoint: .bottom))
                        .font(.system(size: 16, weight: .bold, design: .default))
                        .padding(.all)
                        .background(LinearGradient(
                            gradient: Gradient(colors: [.gray, .black]), startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(14)
                        .shadow(color:.white,radius: 1)
                        .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .bottom)))
                        .rotationEffect(.degrees(Double(degrees)))
                        .onAppear {
                            let baseAnimation = Animation.easeInOut(duration: 1)
                            let repeated = baseAnimation.repeatForever(autoreverses: true)
                            withAnimation(repeated) {
                                degrees = -4
                      }
                  }


                }
            }.padding(.trailing)
            
            
        }.padding(.leading,20)
      }
  }

#Preview {
    SendMoneyView()
}
