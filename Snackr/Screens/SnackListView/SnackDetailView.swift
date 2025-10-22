//
//  SnackDetailView.swift
//  Snackr
//
//  Created by Vitor Quadros on 22/10/25.
//

import SwiftUI

struct SnackDetailView: View {
    let snack: Snack
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: snack.imageURL)) {
                phase in
                switch phase {
                case .empty:
                    Image("food-placeholder")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 250)
                case .success(let image):
                    image
                        .resizable()
                        .scaledToFit()
                case .failure:
                    Image("food-placeholder")
                        .resizable()
                        .scaledToFit()
                @unknown default:
                    EmptyView()
                }
            }
            
            VStack {
                Text(snack.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
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
                Text("$\(snack.price, specifier: "%.2f") - Order Now")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .frame(width: 260, height: 50)
                    .foregroundColor(.white)
                    .background(.brandPrimary)
                    .cornerRadius(10)
            }
                .padding(.bottom, 30)
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button {
            
        } label: {
            ZStack {
                Circle()
                    .frame(width: 36, height: 36)
                    .foregroundColor(.white)
                    .opacity(0.6)
                
                Image(systemName: "xmark")
                    .frame(width: 44, height: 44)
                    .imageScale(.small)
                    .foregroundColor(.black)
            }
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
    SnackDetailView(snack: MockData.sampleSnack)
}
