//
//  JokesViewModel.swift
//  JokesAppSwiftUI
//
//  Created by Selçuk İleri on 9.11.2023.
//

import Foundation
import Alamofire

class JokesViewModel : ObservableObject {
    @Published var jokes = [Value]()
    
    init() {
        getJokes()
    }
    
    func getJokes(count: Int = 6) {
        AF.request("https://raw.githubusercontent.com/atilsamancioglu/JokesAppJsonData/main/chuck.json", method: .get)
            .responseDecodable(of:Welcome.self) { response in
            print("Response: \(response)")
            switch response.result {
            case .success(let data):
                let value = data.value
                self.jokes += value
            case .failure(let error):
                print(error)
            }
        }
    }
    
}
