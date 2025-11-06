//
//  NetworkManager.swift
//  Snackr
//
//  Created by Vitor Quadros on 15/10/25.
//

import Foundation

final class NetworkManager {
    static let shared = NetworkManager()
    
    static let baseURL = "https://my-json-server.typicode.com/vitorquadros/snackr/"
    private let snackURL = baseURL + "db"
    
    private init() {}
    
    func getSnacks() async throws -> [Snack] {
        guard let url = URL(string: snackURL) else {
            throw SNError.invalidURL
        }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        
//        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
//            throw SNError.invalidResponse
//        }
        
        do {
            let decoder = JSONDecoder()
            let decodedResponse = try decoder.decode(SnackResponse.self, from: data)
            return decodedResponse.request
        } catch {
            throw SNError.invalidData
        }
    }
}
