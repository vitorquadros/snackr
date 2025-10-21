//
//  SnackListViewModel.swift
//  Snackr
//
//  Created by Vitor Quadros on 20/10/25.
//

import Foundation
import Combine

final class SnackListViewModel: ObservableObject {
    
    @Published var snacks: [Snack] = []
    
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
