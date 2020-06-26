////
////  DBService.swift
////  upstate_app
////
////  Created by Jose Alarcon Chacon on 6/25/20.
////  Copyright © 2020 Jose Alarcon Chacon. All rights reserved.
////
//
//import Foundation
//
//
//final class DBService {
//    private init() {}
//    public static var firestore: Firestore = {
//        let dataBase = Firestore.firestore()
//        let setting = dataBase.settings
//        setting.areTimestampsInSnapshotsEnabled = true
//        dataBase.settings = setting
//        return dataBase
//    }()
//            
////    static public var generateDocumentId: String {
////        return firestore.collection(UserKey.UserCollectionKey).document().documentID
////    }
//}
