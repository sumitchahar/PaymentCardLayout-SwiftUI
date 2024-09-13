//  CellRowSubcriptionPlane.swift
//  PaymentDetailsList
//  Created by Sumit on 11/09/24.

import SwiftUI

struct CellRowSubcriptionPlan: View {
    var body: some View {
        VStack {
            HStack {
                Rectangle()
                    .fill(LinearGradient(
                        gradient: Gradient(colors: [.brown, .black]), startPoint: .leading, endPoint: .trailing))
                    .frame(width:74,height:74)
                    .cornerRadius(14)
                    .shadow(color:.white,radius: 2)
                    .overlay(content: {
                        VStack {
                            Text("$ 40")
                                .foregroundStyle(LinearGradient(
                                   gradient: Gradient(colors: [.init(red: 239.0/255.0, green: 203.0/255.0, blue: 146.0/255.0), .init(red: 219.0/255.0, green: 168.0/255.0, blue: 106.0/255.0)]), startPoint: .leading, endPoint: .bottom))
                                .font(.system(size: 20, weight: .bold, design: .default))
                                .shadow(color:.white,radius: 0.6)
                        }
                    })
                VStack(alignment:.leading,spacing:7) {
                    Text("Dribble subscribtion")
                        .foregroundStyle(.white)
                        .font(.system(size: 18, weight: .bold, design: .default))
                    Text("Payment")
                        .foregroundStyle(.gray)
                        .font(.system(size: 15, weight: .semibold, design: .default))
                }.padding(.leading, 8)
                Spacer()
            }.padding(.leading)
        }
    }
}

#Preview {
    CellRowSubcriptionPlan()
}
