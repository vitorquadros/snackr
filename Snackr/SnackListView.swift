//
//  SnackrListView.swift
//  Snackr
//
//  Created by Vitor Quadros on 14/10/25.
//

import SwiftUI

struct SnackListView: View {
    @State private var snacks: [Snack] = []
    
    var body: some View {
        NavigationStack {
            List(snacks) { snack in
                SnackListCell(snack: snack)
            }
            .navigationTitle("Snacks")
        }
        .onAppear {
            getSnacks()
        }
    }
    
    func getSnacks() {
        NetworkManager.shared.getSnacks { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let snacks):
                    self.snacks = snacks
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
}

#Preview {
    SnackListView()
}
