//  HeaderView.swift
//  PaymentDetailsList
//  Created by Sumit on 10/09/24.

import SwiftUI

 struct HeaderView: View {
 
     @State private var animationAmount = 1.0
     @State private var startAnimation = false
     @State private var duration = 0.8
     @State private var degrees = 380

     var body: some View {
         GeometryReader { proxy in
             Rectangle()
                 .fill(LinearGradient(
                     gradient: Gradient(colors: [.black, .black]), startPoint: .trailing, endPoint: .bottom))
                 .frame(width:proxy.size.width,height:100)
                 .overlay(content: {
                     ZStack {
                         HStack {
                         VStack {
                             ZStack {
                                 Circle()
                                     .strokeBorder(.brown, lineWidth: 8)
                                     .cornerRadius(60/2)
                                     .frame(width:60,height:60)
                                     .shadow(color:.yellow,radius: 2)
                                     .overlay(content: {
                                         Image("img")
                                             .resizable()
                                             .frame(width:54,height:54)
                                             .cornerRadius(54/2)
                                             .clipped()
                                     })
                                     .scaleEffect(animationAmount)
                                     .animation(.easeInOut(duration: 1.2), value: animationAmount)
                                 Circle()
                                     .fill(.white)
                                     .frame(width: 4, height: 4, alignment: .center)
                                     .cornerRadius(4/2)
                                     .offset(x: -30)
                                     .rotationEffect(.degrees(startAnimation ? 360 : 0))
                                     .animation(.easeInOut(duration: duration).repeatForever(autoreverses: false),
                                                value: startAnimation
                                     )
                             }
                             .offset(x:-50)
                         }
                             VStack(spacing:8) {
                                 Text("Payment Amount")
                                     .foregroundStyle(LinearGradient(
                                        gradient: Gradient(colors: [.init(red: 239.0/255.0, green: 203.0/255.0, blue: 146.0/255.0), .init(red: 219.0/255.0, green: 168.0/255.0, blue: 106.0/255.0)]), startPoint: .leading, endPoint: .bottom))
                                     .font(.system(size: 22, weight: .bold, design: .default))
                                 HStack {
                                     Text("$")
                                         .foregroundStyle(LinearGradient(
                                            gradient: Gradient(colors: [.init(red: 239.0/255.0, green: 203.0/255.0, blue: 146.0/255.0),.init(red: 219.0/255.0, green: 168.0/255.0, blue: 106.0/255.0)]), startPoint: .leading, endPoint: .trailing))
                                         .font(.system(size: 28, weight: .bold, design: .default))
                                         .rotationEffect(.degrees(Double(degrees)))
                                         .onAppear {
                                             let baseAnimation = Animation.easeInOut(duration: 1)
                                             let repeated = baseAnimation.repeatForever(autoreverses: true)
                                             withAnimation(repeated) {
                                                 degrees = -6
                                             }
                                         }
                                     Text("12000.68")
                                         .foregroundStyle(LinearGradient(
                                            gradient: Gradient(colors: [.init(red: 239.0/255.0, green: 203.0/255.0, blue: 146.0/255.0),.init(red: 219.0/255.0, green: 168.0/255.0, blue: 106.0/255.0)]), startPoint: .leading, endPoint: .trailing))
                                         .font(.system(size: 23, weight: .bold, design: .default))
                                 }

                            }
                             .offset(x:50)
                        }
                     }
                 })
         }
         .shadow(color:.white,radius: 0.1)
         .onAppear {
             withAnimation {
                 self.startAnimation.toggle()
             }
               animationAmount += 0.1
             DispatchQueue.main.asyncAfter(deadline: .now() + 1.3) {
                 animationAmount  = 1.0
             }
         }

     }
 }

#Preview {
    HeaderView()
}
