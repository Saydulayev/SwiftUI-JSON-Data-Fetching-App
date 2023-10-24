//
//  UserDetailView.swift
//  Challenge
//
//  Created by Akhmed on 24.10.23.
//

import SwiftUI

struct UserDetailView: View {
    let user: User
    let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter
    }()


    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(user.name)
                .font(.largeTitle)
            Text("Age: \(user.age)")
            Text("Email: \(user.email)")
            Text("Company: \(user.company)")
            Text("About: \(user.about)")
            Text("Registered: \(dateFormatter.string(from: user.registered))")

            VStack(alignment: .leading) {
                Text("Friends:")
                    .font(.headline)
                ForEach(user.friends) { friend in
                    Text(friend.name)
                }
            }
            
            Spacer()
        }
        .padding()
    }
}



