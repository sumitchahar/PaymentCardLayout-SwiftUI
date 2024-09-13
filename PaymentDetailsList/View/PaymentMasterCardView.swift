//  PaymentMasterCardView.swift
//  PaymentDetailsList
//  Created by Sumit on 10/09/24.

 import SwiftUI

 struct PaymentMasterCardView: View {
     
     @State private var animating = false
     @State private var degrees = 0

     var body: some View {
         ZStack {
             VStack {
                 Rectangle()
                         .fill(LinearGradient(
                             gradient: Gradient(colors: [.brown, .black]), startPoint: .trailing, endPoint: .bottom))
                     .frame(width:360,height:240)
                     .cornerRadius(20)
                     .overlay(content: {
                 VStack {
                    Spacer()
                     HStack {
                         VStack(alignment: .leading, spacing:20) {
                             Text("Balance")
                                 .foregroundStyle(.white)
                                 .font(.system(size: 21, weight: .semibold, design: .default))
                             HStack {
                                 Text("$")
                                     .foregroundStyle(.white)
                                     .font(.system(size: 24, weight: .semibold, design: .default))
                                 Text("18,678  ")
                                     .foregroundStyle(.white)
                                     .font(.system(size: 28, weight: .semibold, design: .default))
                                     .offset(x:-7,y:-9)
                                     .transition(.asymmetric(insertion: .move(edge: .trailing), removal: .move(edge: .bottom)))
                                     .rotationEffect(.degrees(Double(degrees)))
                                     .onAppear {
                                         let baseAnimation = Animation.easeInOut(duration: 1)
                                         let repeated = baseAnimation.repeatForever(autoreverses: true)
                                         withAnimation(repeated) {
                                             degrees = -6
                                   }
                               }

                         }.padding(.bottom, -4)
                         }.padding(.leading,-20)
                          .padding(.bottom,14)
                            Spacer()
                     }.padding(.leading,40)
                         HStack {
                            Text("**** **** **** ")
                                 .foregroundStyle(.white)
                                 .font(.system(size: 28, weight: .semibold, design: .default))
                             Text("1234")
                                 .foregroundStyle(.white)
                                 .font(.system(size: 24, weight: .semibold, design: .default))
                                 .tracking(4)
                                 .padding(.top,-12)
                             Spacer()
                         }.padding(.leading,20)
                          .padding(.bottom,-4)
                       HStack {
                           HStack(spacing:30) {
                               VStack(spacing:5) {
                                   Text("Valid Card")
                                       .foregroundStyle(.white)
                                       .font(.system(size: 16, weight: .semibold, design: .default))
                                   Text("53 / 34")
                                       .foregroundStyle(.white)
                                       .font(.system(size: 18, weight: .bold, design: .default))
                               }
                               VStack(spacing:5) {
                                   Text("CVV")
                                       .foregroundStyle(.white)
                                       .font(.system(size: 16, weight: .medium, design: .default))
                                   Text("***")
                                       .foregroundStyle(.white)
                                       .font(.system(size: 26, weight: .bold, design: .default))
                               }.padding([.top],12)
                           }
                          Spacer()
                      VStack {
                           HStack {
                                 Rectangle()
                                   .fill(Color(red: 253.0/255.0, green: 153.0/255.0, blue: 28.0/255.0))
                                         .frame(width:28,height:28)
                                         .cornerRadius(28/2)
                                         .offset(x:16)
                                         .shadow(color:.gray,radius: 0.6)
                                         .overlay(content: {
                                         Rectangle()
                                             .fill(.red)
                                             .frame(width:28,height:28)
                                             .cornerRadius(28/2)
                                             .offset(x: animating ? 0 : -12)
                                             .shadow(color:.gray,radius: 0.6)
                                             .onAppear {
                                             let baseAnimation = Animation.easeInOut(duration: 1)
                                             let repeated = baseAnimation.repeatForever(autoreverses: true)
                                          withAnimation(repeated) {
                                             animating.toggle()
                                      }
                                  }

                             })
                          }
                             Text("mastercard")
                                   .foregroundStyle(.white)
                                   .font(.system(size: 16, weight: .medium, design: .default))
                                   .lineLimit(1)
                         }
                      .padding(.top,-7)
                       }.padding([.leading,.bottom],16)
                       .padding([.trailing],26)
                    }
                 })
               Spacer()
             }.padding(.top,100)
         }
     }
  }

#Preview {
    PaymentMasterCardView()
}
