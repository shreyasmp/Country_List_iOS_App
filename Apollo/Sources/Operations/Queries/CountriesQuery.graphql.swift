// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class CountriesQuery: GraphQLQuery {
  public static let operationName: String = "Countries"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query Countries { countries { __typename code name } }"#
    ))

  public init() {}

  public struct Data: CountryList.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: any ApolloAPI.ParentType { CountryList.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("countries", [Country].self),
    ] }

    public var countries: [Country] { __data["countries"] }

    /// Country
    ///
    /// Parent Type: `Country`
    public struct Country: CountryList.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: any ApolloAPI.ParentType { CountryList.Objects.Country }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("code", String.self),
        .field("name", String.self),
      ] }

      public var code: String { __data["code"] }
      public var name: String { __data["name"] }
    }
  }
}
