// Generated by Create API
// https://github.com/kean/CreateAPI
//
// swiftlint:disable all

import Foundation
import APIClient

public enum Paths {}

extension Paths {
  public static var pet: Pet {
    Pet(path: "/pet")
  }

  public struct Pet {
    // /pet
    public let path: String

    /// Add a new pet to the store
    public func post(_ body: Pet) -> Request<Void> {
      .post(path, body: body)
    }
  }
}

extension Paths.Pet {
  public var findByStatus: FindByStatus {
    FindByStatus(path: path + "/findByStatus")
  }

  public struct FindByStatus {
    // /pet/findByStatus
    public let path: String


  }
}

extension Paths.Pet {
  public var findByTags: FindByTags {
    FindByTags(path: path + "/findByTags")
  }

  public struct FindByTags {
    // /pet/findByTags
    public let path: String


  }
}

extension Paths.Pet {
  public func petID(_ petID: String) -> WithPetID {
    WithPetID(path: path + "/" + petID)
  }

  public struct WithPetID {
    // /pet/{petId}
    public let path: String

    /// Find pet by ID
    public func get() -> Request<Pet> {
      .get(path)
    }
  }
}

extension Paths.Pet.WithPetID {
  public var uploadImage: UploadImage {
    UploadImage(path: path + "/uploadImage")
  }

  public struct UploadImage {
    // /pet/{petId}/uploadImage
    public let path: String


  }
}

extension Paths {
  public static var store: Store {
    Store(path: "/store")
  }

  public struct Store {
    // /store
    public let path: String
  }
}

extension Paths.Store {
  public var inventory: Inventory {
    Inventory(path: path + "/inventory")
  }

  public struct Inventory {
    // /store/inventory
    public let path: String


  }
}

extension Paths.Store {
  public var order: Order {
    Order(path: path + "/order")
  }

  public struct Order {
    // /store/order
    public let path: String

    /// Place an order for a pet
    public func post(_ body: Order) -> Request<Order> {
      .post(path, body: body)
    }
  }
}

extension Paths.Store.Order {
  public func orderID(_ orderID: String) -> WithOrderID {
    WithOrderID(path: path + "/" + orderID)
  }

  public struct WithOrderID {
    // /store/order/{order_id}
    public let path: String

    /// Find purchase order by ID
    public func get() -> Request<Order> {
      .get(path)
    }
  }
}

extension Paths {
  public static var user: User {
    User(path: "/user")
  }

  public struct User {
    // /user
    public let path: String

    /// Create user
    public func post(_ body: User) -> Request<Void> {
      .post(path, body: body)
    }
  }
}

extension Paths.User {
  public var createWithArray: CreateWithArray {
    CreateWithArray(path: path + "/createWithArray")
  }

  public struct CreateWithArray {
    // /user/createWithArray
    public let path: String

    /// Creates list of users with given input array
    public func post(_ body: [User]) -> Request<Void> {
      .post(path, body: body)
    }
  }
}

extension Paths.User {
  public var createWithList: CreateWithList {
    CreateWithList(path: path + "/createWithList")
  }

  public struct CreateWithList {
    // /user/createWithList
    public let path: String

    /// Creates list of users with given input array
    public func post(_ body: [User]) -> Request<Void> {
      .post(path, body: body)
    }
  }
}

extension Paths.User {
  public var login: Login {
    Login(path: path + "/login")
  }

  public struct Login {
    // /user/login
    public let path: String


  }
}

extension Paths.User {
  public var logout: Logout {
    Logout(path: path + "/logout")
  }

  public struct Logout {
    // /user/logout
    public let path: String

    /// Logs out current logged in user session
    public func get() -> Request<Void> {
      .get(path)
    }
  }
}

extension Paths.User {
  public func username(_ username: String) -> WithUsername {
    WithUsername(path: path + "/" + username)
  }

  public struct WithUsername {
    // /user/{username}
    public let path: String

    /// Get user by user name
    public func get() -> Request<User> {
      .get(path)
    }
  }
}

extension Paths {
  public static var fake: Fake {
    Fake(path: "/fake")
  }

  public struct Fake {
    // /fake
    public let path: String

    /// To test enum parameters
    public func get() -> Request<Void> {
      .get(path)
    }
  }
}

