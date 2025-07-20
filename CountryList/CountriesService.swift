//
//  CountriesService.swift
//  CountryList
//
//  Created by Shreyas Muthkur on 7/19/25.
//

protocol CountriesService {
    func fetchCountries(completion: @escaping (Result<[Country], Error>) -> Void)
}

class ApolloCountriesService: CountriesService {
 
    func fetchCountries(completion: @escaping (Result<[Country], Error>) -> Void) {
        Network.shared.apollo.fetch(query: CountriesQuery()) { result in
            switch result {
            case .success(let graphQLResult):
                let countries = graphQLResult.data?.countries.map {
                    Country(code: $0.code, name: $0.name)
                } ?? []
                completion(.success(countries))
                
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
}
