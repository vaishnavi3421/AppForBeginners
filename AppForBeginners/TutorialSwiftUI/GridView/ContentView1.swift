//
//  ContentView1.swift
//  AppForBeginners
//
//  Created by Sanjay, Vaishnavi on 15/03/24.
//

import SwiftUI

struct ContentView1: View {
    let teams = [
        Team(id: 1, name: "Team A", city: "City A"),
        Team(id: 2, name: "Team B", city: "City B"),
        Team(id: 3, name: "Team C", city: "City C"),
        Team(id: 4, name: "Team D", city: "City D"),
        Team(id: 5, name: "Team E", city: "City E"),
        Team(id: 6, name: "Team F", city: "City F"),
        Team(id: 7, name: "Team G", city: "City G"),
        Team(id: 8, name: "Team H", city: "City H"),
        Team(id: 9, name: "Team I", city: "City I"),
        Team(id: 10, name: "Team J", city: "City J"),
        Team(id: 11, name: "Team K", city: "City K"),
        Team(id: 12, name: "Team L", city: "City L"),
        Team(id: 13, name: "Team M", city: "City M"),
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: Array(repeating: GridItem(), count: 3)) {
                ForEach(teams, id: \.id) { team in
                    teamCellView(team: team)
                }
            }
            .padding()
        }
    }
    
    func teamCellView(team: Team) -> some View {
        VStack {
            AsyncTeamImage(teamId: team.id)
                .frame(width: 100, height: 100)
                .clipShape(Circle())
            Text(team.city)
                .font(.headline)
            Text(team.name)
                .font(.subheadline)
        }
        .padding()
        .background(Color.secondary.opacity(0.2))
        .cornerRadius(10)
    }
}

struct Team {
    let id: Int
    let name: String
    let city: String
}

struct AsyncTeamImage: View {
    let teamId: Int
    
    var body: some View {
        // Async image loading logic goes here
        Image(systemName: "person.circle.fill")
            .resizable()
            .aspectRatio(contentMode: .fill)
    }
}



#Preview {
    ContentView1()
}
