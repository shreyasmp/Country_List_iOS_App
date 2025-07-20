//
//  CountriesViewModelTests.swift
//  CountryList
//
//  Created by Shreyas Muthkur on 7/19/25.
//

import XCTest
@testable import CountryList

// Mock Service
class MockCountriesService: CountriesService {
    var result: Result<[Country], Error>!

    func fetchCountries(completion: @escaping (Result<[Country], Error>) -> Void) {
        completion(result)
    }
}

final class CountriesViewModelTests: XCTestCase {

    func test_fetchCountries_success_setsCountries() {
        // Arrange
        let mockService = MockCountriesService()
        let mockCountry1 = Country(code: "US", name: "United States")
        let mockCountry2 = Country(code: "CA", name: "Canada")
        mockService.result = .success([mockCountry1, mockCountry2])
        let viewModel = CountriesViewModel(service: mockService)
        let expectation = expectation(description: "Countries fetched")

        // Act
        viewModel.fetchCountries()

        // Assert
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            XCTAssertEqual(viewModel.countries.count, 2)
            XCTAssertEqual(viewModel.countries.first?.code, "US")
            XCTAssertEqual(viewModel.countries.last?.name, "Canada")
            expectation.fulfill()
        }

        wait(for: [expectation], timeout: 1.0)
    }

    func test_fetchCountries_failure_doesNotSetCountries() {
        // Arrange
        let mockService = MockCountriesService()
        mockService.result = .failure(NSError(domain: "", code: -1, userInfo: nil))
        let viewModel = CountriesViewModel(service: mockService)
        let expectation = expectation(description: "Handle failure")

        // Act
        viewModel.fetchCountries()

        // Assert
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            XCTAssertTrue(viewModel.countries.isEmpty)
            expectation.fulfill()
        }

        wait(for: [expectation], timeout: 1.0)
    }
}
