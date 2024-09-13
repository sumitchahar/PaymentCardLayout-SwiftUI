//  ContentView.swift
//  PaymentDetailsList
//  Created by Sumit on 10/09/24.

 import SwiftUI

 struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            ScrollView {
                HeaderView()
                PaymentMasterCardView()
                    .shadow(color:.white,radius: 1)
                    .padding(.top, 20)
                SendMoneyView()
                    .padding(.top, 30)
                ListViewDetails()
                    .padding(.top,20)
            }
        }
    }
 }

#Preview {
    ContentView()
}
