// Generated by Create API
// https://github.com/kean/CreateAPI
//
// swiftlint:disable all

import Foundation
import APIClient
import HTTPHeaders

 enum Paths {}

extension Paths {
    static var pet: Pet {
        Pet(path: "/pet")
    }

    struct Pet {
        /// Path: `/pet`
        let path: String

        /// Add a new pet to the store
        func post(_ body: edgecases_change_access_control.Pet) -> Request<Void> {
            .post(path, body: body)
        }

        /// Update an existing pet
        func put(_ body: edgecases_change_access_control.Pet) -> Request<Void> {
            .put(path, body: body)
        }
    }
}

extension Paths.Pet {
    var findByStatus: FindByStatus {
        FindByStatus(path: path + "/findByStatus")
    }

    struct FindByStatus {
        /// Path: `/pet/findByStatus`
        let path: String


    }
}

extension Paths.Pet {
    var findByTags: FindByTags {
        FindByTags(path: path + "/findByTags")
    }

    struct FindByTags {
        /// Path: `/pet/findByTags`
        let path: String


    }
}

extension Paths.Pet {
    func petID(_ petID: String) -> WithPetID {
        WithPetID(path: path + "/" + petID)
    }

    struct WithPetID {
        /// Path: `/pet/{petId}`
        let path: String

        /// Find pet by ID
        func get() -> Request<edgecases_change_access_control.Pet> {
            .get(path)
        }

        /// Deletes a pet
        func delete() -> Request<Void> {
            .delete(path)
        }
    }
}

extension Paths.Pet.WithPetID {
    var uploadImage: UploadImage {
        UploadImage(path: path + "/uploadImage")
    }

    struct UploadImage {
        /// Path: `/pet/{petId}/uploadImage`
        let path: String


    }
}

extension Paths {
    static var store: Store {
        Store(path: "/store")
    }

    struct Store {
        /// Path: `/store`
        let path: String
    }
}

extension Paths.Store {
    var inventory: Inventory {
        Inventory(path: path + "/inventory")
    }

    struct Inventory {
        /// Path: `/store/inventory`
        let path: String


    }
}

extension Paths.Store {
    var order: Order {
        Order(path: path + "/order")
    }

    struct Order {
        /// Path: `/store/order`
        let path: String

        /// Place an order for a pet
        func post(_ body: edgecases_change_access_control.Order) -> Request<edgecases_change_access_control.Order> {
            .post(path, body: body)
        }
    }
}

extension Paths.Store.Order {
    func orderID(_ orderID: String) -> WithOrderID {
        WithOrderID(path: path + "/" + orderID)
    }

    struct WithOrderID {
        /// Path: `/store/order/{order_id}`
        let path: String

        /// Find purchase order by ID
        func get() -> Request<edgecases_change_access_control.Order> {
            .get(path)
        }

        /// Delete purchase order by ID
        func delete() -> Request<Void> {
            .delete(path)
        }
    }
}

extension Paths {
    static var user: User {
        User(path: "/user")
    }

    struct User {
        /// Path: `/user`
        let path: String

        /// Create user
        func post(_ body: edgecases_change_access_control.User) -> Request<Void> {
            .post(path, body: body)
        }
    }
}

extension Paths.User {
    var createWithArray: CreateWithArray {
        CreateWithArray(path: path + "/createWithArray")
    }

    struct CreateWithArray {
        /// Path: `/user/createWithArray`
        let path: String

        /// Creates list of users with given input array
        func post(_ body: [User]) -> Request<Void> {
            .post(path, body: body)
        }
    }
}

extension Paths.User {
    var createWithList: CreateWithList {
        CreateWithList(path: path + "/createWithList")
    }

    struct CreateWithList {
        /// Path: `/user/createWithList`
        let path: String

        /// Creates list of users with given input array
        func post(_ body: [User]) -> Request<Void> {
            .post(path, body: body)
        }
    }
}

extension Paths.User {
    var login: Login {
        Login(path: path + "/login")
    }

    struct Login {
        /// Path: `/user/login`
        let path: String

        /// Logs user into the system
        func get() -> Request<String> {
            .get(path)
        }

        enum GetHeaders {
            /// Calls per hour allowed by the user
            @available(*, deprecated, message: "Deprecated")
            static let rateLimit = HTTPHeader<Int>(field: "X-Rate-Limit")
            /// Date in UTC when toekn expires
            static let expiresAfter = HTTPHeader<Date>(field: "X-Expires-After")
        }
    }
}

extension Paths.User {
    var logout: Logout {
        Logout(path: path + "/logout")
    }

    struct Logout {
        /// Path: `/user/logout`
        let path: String

        /// Logs out current logged in user session
        func get() -> Request<Void> {
            .get(path)
        }
    }
}

extension Paths.User {
    func username(_ username: String) -> WithUsername {
        WithUsername(path: path + "/" + username)
    }

    struct WithUsername {
        /// Path: `/user/{username}`
        let path: String

        /// Get user by user name
        func get() -> Request<edgecases_change_access_control.User> {
            .get(path)
        }

        /// Updated user
        func put(_ body: edgecases_change_access_control.User) -> Request<Void> {
            .put(path, body: body)
        }

        /// Delete user
        func delete() -> Request<Void> {
            .delete(path)
        }
    }
}

extension Paths {
    static var fake: Fake {
        Fake(path: "/fake")
    }

    struct Fake {
        /// Path: `/fake`
        let path: String

        /// To test enum parameters
        func get() -> Request<Void> {
            .get(path)
        }

        /// To test "client" model
        func patch(_ body: Client) -> Request<Client> {
            .patch(path, body: body)
        }
    }
}

