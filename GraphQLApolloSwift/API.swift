//  This file was automatically generated and should not be edited.

import Apollo

public final class UserGetInfoQuery: GraphQLQuery {
  public let operationDefinition =
    "query user_getInfo($uid: ID) {\n  user_getInfo(uid: $uid) {\n    __typename\n    uid\n    username\n    registerTime\n  }\n}"

  public var uid: GraphQLID?

  public init(uid: GraphQLID? = nil) {
    self.uid = uid
  }

  public var variables: GraphQLMap? {
    return ["uid": uid]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("user_getInfo", arguments: ["uid": GraphQLVariable("uid")], type: .object(UserGetInfo.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(userGetInfo: UserGetInfo? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "user_getInfo": userGetInfo.flatMap { (value: UserGetInfo) -> ResultMap in value.resultMap }])
    }

    /// 校验是否登录
    public var userGetInfo: UserGetInfo? {
      get {
        return (resultMap["user_getInfo"] as? ResultMap).flatMap { UserGetInfo(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "user_getInfo")
      }
    }

    public struct UserGetInfo: GraphQLSelectionSet {
      public static let possibleTypes = ["UserInfo"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("uid", type: .scalar(GraphQLID.self)),
        GraphQLField("username", type: .scalar(String.self)),
        GraphQLField("registerTime", type: .scalar(String.self)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(uid: GraphQLID? = nil, username: String? = nil, registerTime: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "UserInfo", "uid": uid, "username": username, "registerTime": registerTime])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var uid: GraphQLID? {
        get {
          return resultMap["uid"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "uid")
        }
      }

      public var username: String? {
        get {
          return resultMap["username"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "username")
        }
      }

      public var registerTime: String? {
        get {
          return resultMap["registerTime"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "registerTime")
        }
      }
    }
  }
}