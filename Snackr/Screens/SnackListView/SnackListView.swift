//
//  SnackrListView.swift
//  Snackr
//
//  Created by Vitor Quadros on 14/10/25.
//

import SwiftUI

struct SnackListView: View {
    
    @StateObject private var vm = SnackListViewModel()
    @State private var isShowingDetail = false
    @State private var selectedSnack: Snack?

    var body: some View {
        ZStack {
            NavigationStack {
                List(vm.snacks) { snack in
                    SnackListCell(snack: snack)
                        .onTapGesture {
                            selectedSnack = snack
                            isShowingDetail = true
                        }
                }
                .navigationTitle("Snacks")
                .disabled(isShowingDetail)
            }
            .onAppear {
                vm.getSnacks()
            }
            .blur(radius: isShowingDetail ? 20 : 0)
            
            if isShowingDetail {
                if let selectedSnack = selectedSnack {
                    SnackDetailView(snack: selectedSnack,
                                    isShowingDetail: $isShowingDetail)
                }
            }
            
            if vm.isLoading {
                LoadingView()
            }
            
        }
        .alert(item: $vm.alertItem) { alert in
            Alert(title: alert.title,
                  message: alert.message,
                  dismissButton: alert.dismissButton)
        }
        
    }
}

#Preview {
    SnackListView()
}
