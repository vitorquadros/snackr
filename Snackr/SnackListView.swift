//
//  SnackrListView.swift
//  Snackr
//
//  Created by Vitor Quadros on 14/10/25.
//

import SwiftUI

struct SnackListView: View {
    var body: some View {
        NavigationStack {
            Text("Snacks list view")
                .navigationTitle("Snacks")
        }
    }
}

#Preview {
    SnackListView()
}
