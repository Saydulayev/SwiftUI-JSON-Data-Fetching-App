//
//  UserData.swift
//  Challenge
//
//  Created by Akhmed on 24.10.23.
//

import SwiftUI


class UserData: ObservableObject {
    @Published var users: [User] = []
    
    func fetch() {
        guard let url = URL(string: "https://www.hackingwithswift.com/samples/friendface.json") else {
            print("Invalid URL")
            return
        }

        let request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                if let decoded = try? decoder.decode([User].self, from: data) {
                    DispatchQueue.main.async {
                        self.users = decoded
                    }
                    return
                }
            }
            print("Error: \(error?.localizedDescription ?? "Unknown error")")
        }.resume()
    }
}
