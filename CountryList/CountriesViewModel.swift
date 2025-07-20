//
//  CountriesViewModel.swift
//  CountryList
//
//  Created by Shreyas Muthkur on 6/24/25.
//

import Foundation
import Apollo


class CountriesViewModel: ObservableObject {
    @Published var countries: [Country] = []
    private let service: CountriesService

    init(service: CountriesService = ApolloCountriesService()) {
        self.service = service
    }
    
    func fetchCountries() {
        service.fetchCountries { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let countries):
                    self?.countries = countries
                case .failure(let error):
                    print("Error: \(error)")
                }
            }
        }
    }
}
