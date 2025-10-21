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
    @Published var alertItem: AlertItem?
    
    func getSnacks() {
        NetworkManager.shared.getSnacks { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let snacks):
                    self.snacks = snacks
                    
                case .failure(let error):
                    switch error {
                    case .invalidResponse:
                        self.alertItem = AlertContext.invalidResponse
                        
                    case .invalidData:
                        self.alertItem = AlertContext.invalidData
                        
                    case .invalidURL:
                        self.alertItem = AlertContext.invalidURL
                        
                    case .unableToComplete:
                        self.alertItem = AlertContext.unableToComplete
                    }
                }
            }
        }
    }
}
