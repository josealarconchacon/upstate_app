//
//  User.swift
//  upstate_app
//
//  Created by Jose Alarcon Chacon on 6/25/20.
//  Copyright © 2020 Jose Alarcon Chacon. All rights reserved.
//

import Foundation

struct User_Info {
  let userId: String
  let displayName: String
  let email: String
  let photoURL: String?
  let joinedDate: String
  
  init(userId: String, displayName: String, email: String, photoURL: String?, joinedDate: String) {
    self.userId = userId
    self.displayName = displayName
    self.email = email
    self.photoURL = photoURL
    self.joinedDate = joinedDate
  }
  
  init(dict: [String: Any]) {
    self.userId = dict[UsersCollectionKeys.UserIdKey] as? String ?? ""
    self.displayName = dict[UsersCollectionKeys.DisplayNameKey] as? String ?? ""
    self.email = dict[UsersCollectionKeys.EmailKey] as? String ?? ""
    self.photoURL = dict[UsersCollectionKeys.PhotoURLKey] as? String ?? ""
    self.joinedDate = dict[UsersCollectionKeys.JoinedDateKey] as? String ?? ""
  }
}
