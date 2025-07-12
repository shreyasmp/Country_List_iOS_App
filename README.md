# Country_List_iOS_App

A modern iOS application that displays a list of countries fetched from a GraphQL API.

## Technologies Used

- **SwitfUI** - Primary programming language
- **SwiftUICoree** - Modern UI toolkit for building native iOS UI
- **Apollo GraphQL** - For efficient data fetching from the GraphQL API
- **MVVM Architecture** - Utilizing ViewModel components

## Features

- Fetch countries data from a GraphQL API
- Display countries in a scrollable list
- Show country name and code for each entry
- VStack from SwiftUICore for displaying list of countries

## Setup

1. Clone the repository:
   ```
   git clone https://github.com/shreyasmp/Country_List_iOS_App.git
   ```

2. Open the project in xcode

3. Configure the GraphQL server URL in `CountriesViewModel.Swift` if needed:
   ```SwiftUI
   private(set) lazy var apollo: ApolloClient = {
        let url = URL(string: "http://localhost:8080/graphql")!
        return ApolloClient(url: url)
    }()
   ```

4. Run the application on an Simulator

## Project Structure

- **ViewModel Layer**: Handles data operations and state management
- **UI Layer**: Compose UI components that display the country data
- **GraphQL**: Apollo client integration for API communication

## Requirements

- XCode 16.2 or over
- Min version: Simualator 18.2

## Screenshots

![alt text](Images/iOS_App_Recording.gif)
