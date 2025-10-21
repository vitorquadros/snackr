//
//  SnackListCell.swift
//  Snackr
//
//  Created by Vitor Quadros on 15/10/25.
//

import SwiftUI

struct SnackListCell: View {
    let snack: Snack
    
    var body: some View {
        HStack(spacing: 16) {
            AsyncImage(url: URL(string: "dasdasd")) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                case .success(let image):
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 120, height: 90)
                        .cornerRadius(8)
                case .failure:
                    Image("food-placeholder")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 120, height: 90)
                        .cornerRadius(8)
                        .opacity(0.5)
                @unknown default:
                    EmptyView()
                }
            }
            .frame(width: 120, height: 90)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(snack.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("$\(snack.price, specifier: "%.2f")")
                    .fontWeight(.semibold)
                    .foregroundColor(.secondary)
            }
        }
    }
}

#Preview {
    List {
        SnackListCell(snack: MockData.sampleSnack)
    }
}
