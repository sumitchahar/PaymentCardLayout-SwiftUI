//  ListViewDetails.swift
//  PaymentDetailsList
//  Created by Sumit on 11/09/24.

 import SwiftUI

  struct ListViewDetails: View {
    
    var body: some View {
        VStack {
            HStack {
                Text("Subcribtion Plan")
                    .foregroundStyle(.white)
                    .font(.system(size: 24, weight: .semibold, design: .default))
                Spacer()
            }.padding(.leading)
            CellRowSubcriptionPlan()
                .padding(.top,10)
            CellRowSubcriptionPlanPanding()
                .padding(.top,10)
        }
     }
    
 }

#Preview {
    ListViewDetails()
}
