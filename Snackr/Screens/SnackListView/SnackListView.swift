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
        ZStack {
            NavigationStack {
                List(vm.snacks) { snack in
                    SnackListCell(snack: snack)
                        .listRowSeparator(.visible)
                    
                        .onTapGesture {
                            vm.selectedSnack = snack
                            vm.isShowingDetail = true
                        }
                }
                .navigationTitle("Snacks")
                .disabled(vm.isShowingDetail)
            }
            .task {
                vm.getSnacks()
            }
            .blur(radius: vm.isShowingDetail ? 20 : 0)
            
            if vm.isShowingDetail {
                if let selectedSnack = vm.selectedSnack {
                    SnackDetailView(snack: selectedSnack,
                                    isShowingDetail: $vm.isShowingDetail)
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
