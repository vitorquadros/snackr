//
//  SnackDetailView.swift
//  Snackr
//
//  Created by Vitor Quadros on 22/10/25.
//

import SwiftUI

struct SnackDetailView: View {
    let snack: Snack
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: snack.imageURL)) {
                phase in
                switch phase {
                case .empty:
                    ProgressView()
                        .frame(width: 300, height: 225)
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 300, height: 225)
                case .failure:
                    Image("food-placeholder")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 300, height: 225)
                @unknown default:
                    EmptyView()
                }
            }
            
            VStack {
                Text(snack.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                
                Text(snack.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                
                HStack(spacing: 40) {
                    SnackMacro(title: "Calories", value: "\(String(snack.calories))")
                    SnackMacro(title: "Protein", value: "\(String(snack.protein))g")
                    SnackMacro(title: "Carbs", value: "\(String(snack.carbs))g")
                }
            }
            
            Spacer()
            
            Button {
                
            } label: {
               SNButton(title: "$\(snack.price, specifier: "%.2f") - Order Now")
            }
                .padding(.bottom, 30)
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button {
            isShowingDetail = false
        } label: {
            XDismissButton()
            .padding([.top, .trailing], 2)
        }, alignment: .topTrailing)
    }
}

struct SnackMacro: View {
    let title: String
    let value: String
    
    var body: some View {
        VStack(spacing: 5) {
            Text(title)
                .bold()
                .font(.caption)
                
            Text(value)
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}

#Preview {
    SnackDetailView(snack: MockData.sampleSnack, isShowingDetail: .constant(true))
}
