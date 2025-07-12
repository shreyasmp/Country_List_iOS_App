//
//  ContentView.swift
//  CountryList
//
//  Created by Shreyas Muthkur on 6/15/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = CountriesViewModel()
    
    var body: some View {
        List(viewModel.countries, id: \.code) { country in
            VStack(alignment: .leading) {
                Text(country.name).font(.headline)
                Text(country.code).font(.subheadline)
            }
        }
        .onAppear {
            viewModel.fetchCountries()
        }
    }
}

#Preview {
    ContentView()
}
