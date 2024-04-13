////
////  User.swift
////  AppForBeginners
////
////  Created by Sanjay, Vaishnavi on 27/03/24.
////
//
//import Foundation
//struct User: Codable, Identifiable {
//    enum CodingKeys: CodingKey {
//        case name
//        case designation
//        case email
//    }
//    
//    var id = UUID()
//    var name: String
//    var designation: String
//    var email: String
//}
//class ReadData: ObservableObject  {
//    @Published var users = [User]()
//    
//        
//    init(){
//        loadData()
//    }
//    
//    func loadData()  {
//        //have to read the URL for a file in our main app bundle, we use Bundle.main.url()
//        guard let url = Bundle.main.url(forResource: "languages", withExtension: "json")
//            else {
//                print("Json file not found")
//                return
//            }
//        //To convert your Data to an instance of your struct, you need a JSONDecoder instance
//        let data = try? Data(contentsOf: url)
//        //JSONDecoder instance has a decode(_:from:) method that you call to convert JSON data into the object of your choosing.
//        let users = try? JSONDecoder().decode([User].self, from: data!)
//        //The first argument for this method is the type that you want to decode your data into. In this case, that’s User.self.
//        self.users = users!
//        
//    }
//     
//}
