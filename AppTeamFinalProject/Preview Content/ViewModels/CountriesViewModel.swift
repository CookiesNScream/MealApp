//
//  CountriesViewModel.swift
//  AppTeamFinalProject
//
//  Created by Arya Venkatesan on 11/29/24.
//

import Foundation

class CountriesViewModel: ObservableObject {
    @Published var items: [Meal]?
    public var placeholders = Array(repeating: Meal(), count: 10)
    
    func fetchData(query: String) {
        let urlString = "\(Constants.baseURl)/filter.php?a=\(query)"
        
        let url = URL(string: urlString)
        
        var request = URLRequest(url: url!)
        request.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            if error != nil {
                print("Error searching recipes")
                return
            }
            
            if let data = data {
                do {
                    let search = try JSONDecoder().decode(Search.self, from: data)
                    DispatchQueue.main.async {
                        self.items = search.meals
                    }
                } catch {
                    print("Error parsing data")
                    return
                }
            }
        }.resume()
    }
}
