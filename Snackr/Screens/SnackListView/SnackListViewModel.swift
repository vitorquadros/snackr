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
    
    @Published var isLoading = false
    
    @Published var isShowingDetail = false
    @Published var selectedSnack: Snack?
    
    func getSnacks() {
        isLoading = true

        Task {
            do {
                snacks = try await NetworkManager.shared.getSnacks()
                isLoading = false
            } catch {
                if let snackError = error as? SNError {
                    switch snackError {
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    }
                } else {
                    alertItem = AlertContext.genericError
                }
               
                isLoading = false
            }
        }
    }
}
