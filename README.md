# Country_List_iOS_App
iOS app to display a list of countries from backend server which returns country name and country code. 


## Technologies Used

- **SwiftUI** - Primary programming language for iOS
- **Apollo GraphQL** - For efficient data fetching from the GraphQL API
- **MVVM Architecture** - Utilizing ViewModel components

## Features

- Fetch countries data from a GraphQL API
- Display countries in a vstack / list
- Show country name and code for each entry

## Setup

1. Clone the repository:
   ```
   git clone https://github.com/shreyasmp/Country_List_iOS_App.git
   ```

2. Open the project in xcoode 16.+

3. Run the application on an Simulator or physical device

## Project Structure

- **ViewModel Layer**: Handles data operations and state management
- **UI Layer**: Swift UI components that display the country data using List/VStack
- **GraphQL**: Apollo client integration for API communication

## Requirements

- xcode 16.+ or newer
- iOS Min: 18.2

## Screenshots

![alt text](images/iOS_App_Recording.gif)
