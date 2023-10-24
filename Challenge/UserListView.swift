//
//  UserListView.swift
//  Challenge
//
//  Created by Akhmed on 24.10.23.
//

import SwiftUI

struct UserListView: View {
    @ObservedObject var userData = UserData()

    var body: some View {
        NavigationView {
            List(userData.users) { user in
                NavigationLink(destination: UserDetailView(user: user)) {
                    VStack(alignment: .leading) {
                        Text(user.name)
                            .font(.headline)
                        Text(user.company)
                            .foregroundColor(.gray)
                    }
                }
            }
            .onAppear(perform: userData.fetch)
        }
    }
}
