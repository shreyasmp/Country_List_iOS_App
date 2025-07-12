//
//  Network.swift
//  CountryList
//
//  Created by Shreyas Muthkur on 6/22/25.
//

import Foundation
import Apollo
import SwiftUI

class Network {
    static let shared = Network()

    private(set) lazy var apollo: ApolloClient = {
        let url = URL(string: "http://localhost:8080/graphql")!
//        let configuration = URLSessionConfiguration.default
//        configuration.httpAdditionalHeaders = ["Content-Type": "application/json"]

        return ApolloClient(url: url)
    }()
}

