//
//  Userrname.swift
//  AppForBeginners
//
//  Created by Sanjay, Vaishnavi on 27/05/24.
//
//Request
//Get :- downloading
//post :- Uplaoding
//Put :- Update the Existing Data
//Delete :- Delete Existing Data
import SwiftUI

struct Userrname: View {
    @State private var user : GithubUser1?
    var body: some View {
        VStack(spacing :20) {
            
            AsyncImage(url: URL(string: user?.avatarUrl ?? "")) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            } placeholder: {
                Circle()
                    .foregroundColor(.secondary)
                   
            }
            .frame(width: 120, height : 120)
            
            Text(user?.login ?? "Login Placeholder")
                .bold()
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Text(user?.bio ?? "Bio Placeholder")
                .padding()
                Spacer()
              
        }
        .padding()
        .task {
            do {
                user = try await getUser()
            }
                catch GitError.invalidURL{
                    print("Invalid URL")
                    
                }
                catch GitError.invalidResponse {
                    print("Invalid Response")
                }
                catch GitError.invalidData{
                    print("Invalid Data")
                }
                catch
                {
                    print("Unexpected Error")
                }
                    
            }
        }
    }
    func getUser() async throws -> GithubUser1 {
        let endpoints = "https://api.github.com/users/vaishnavi3421"
        guard let url = URL(string: endpoints) else {
            throw GitError.invalidURL
        }
        let (data, response) = try await URLSession.shared.data(from: url)
        guard let response = response as? HTTPURLResponse , response.statusCode == 200 else {
            throw GitError.invalidURL
        }
        do {
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
           return try decoder.decode(GithubUser1.self, from:data )
        }
        catch {
            throw GitError.invalidURL
        }
    
}

#Preview {
    Userrname()
}

struct GithubUser1 : Codable {
    let login : String
    let avatarUrl : String
    let bio : String
}

enum GitError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
}
