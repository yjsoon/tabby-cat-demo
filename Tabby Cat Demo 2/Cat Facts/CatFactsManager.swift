//
//  CatFactsManager.swift
//  Tabby Cat Demo 2
//
//  Created by YJ Soon on 6/9/23.
//

import Foundation

class CatFactsManager: ObservableObject {
    
    let apiURL = URL(string: "https://catfact.ninja/fact")!
    @Published var catFact: CatFact?
    
    func getCatFact() {
        
        catFact = nil
        
        Task {
            let (data, response) = try await URLSession.shared.data(from: apiURL)
            print("🐱 GOT CAT FACT!!! 🐱")
            print(data)
            print(String(data: data, encoding: .utf8)!)

            // update the UI - go back to the main thread
            try await MainActor.run {
                catFact = try JSONDecoder().decode(CatFact.self, from: data)
            }
        }
        
    }
    
}
