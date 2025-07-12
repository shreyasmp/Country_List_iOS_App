//
//  CountriesViewModel.swift
//  CountryList
//
//  Created by Shreyas Muthkur on 6/24/25.
//

import Foundation
import Apollo

class CountriesViewModel: ObservableObject {
    @Published var countries: [CountriesQuery.Data.Country] = []

    func fetchCountries() {
        Network.shared.apollo.fetch(query: CountriesQuery()) { result in
            switch result {
            case .success(let graphQLResult):
                self.countries = graphQLResult.data?.countries ?? []
            case .failure(let error):
                print("Error: \(error)")
            }
        }
    }
}
