//
//  SnackrListView.swift
//  Snackr
//
//  Created by Vitor Quadros on 14/10/25.
//

import SwiftUI

struct SnackListView: View {
    
    @StateObject private var vm = SnackListViewModel()

    var body: some View {
        NavigationStack {
            List(vm.snacks) { snack in
                SnackListCell(snack: snack)
            }
            .navigationTitle("Snacks")
        }
        .onAppear {
            vm.getSnacks()
        }
    }
}

#Preview {
    SnackListView()
}
