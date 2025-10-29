//
//  AccountView.swift
//  Snackr
//
//  Created by Vitor Quadros on 14/10/25.
//

import SwiftUI

struct AccountView: View {
    @StateObject var vm = AccountViewModel()
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Personal Info") {
                    TextField("First Name", text: $vm.user.firstName)
                    TextField("Last Name", text: $vm.user.lastName)
                    TextField("Email", text: $vm.user.email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                    
                    DatePicker("Birthdate", selection: $vm.user.birthDate, displayedComponents: .date)
                        .datePickerStyle(.compact)
                    
                    Button {
                        vm.saveChanges()
                    } label: {
                        Text("Save Changes")
                    }
                }
                
                Section("Requests") {
                    Toggle("Extra Napkins", isOn: $vm.user.extraNapkins)
                    Toggle("Frequent Refills", isOn: $vm.user.frequentRefills)
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
            }
            .navigationTitle("Account")
        }
        .onAppear {
            vm.retrieveUser()
        }
        .alert(item: $vm.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    AccountView()
}
