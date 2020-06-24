//
//  FirebaseManager.swift
//  FirebaseTutorial
//
//  Created by Admin on 23/06/2020.
//  Copyright © 2020 Admin. All rights reserved.
//

import UIKit
import FirebaseAuth
import GoogleSignIn

typealias AuthManager = FirebaseAuthManager

class FirebaseAuthManager {
    static let sh = FirebaseAuthManager()
    
    private init() {}
    
    func createUser(email: String, password: String, completionHandler: @escaping (_ success: Bool) -> Void) {
        Auth.auth().createUser(withEmail: email, password: password) { (authResult, error) in
            if let user = authResult?.user {
                print(user)
                completionHandler(true)
            } else {
                print(error)
                completionHandler(false)
            }
        }
    }
    
    func signIn(email: String, password: String, completion: @escaping (_ success: Bool) -> Void) {
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            if let error = error, let _ = AuthErrorCode(rawValue: error._code) {
                completion(false)
            } else {
                completion(true)
            }
        }
    }
//
//    func signInWithCredentials(credentials: AuthCredential, completeion: @escaping (_ success: Bool) -> Void) {
//        guard let auth = user.authentication else { return }
//        let credentials = GoogleAuthProvider.credential(withIDToken: auth.idToken, accessToken: auth.accessToken)
//        Auth.auth().signIn(with: credentials) { (authResult, error) in
//            if let error = error {
//                print(error.localizedDescription)
//            } else {
//                print("Login Successful.”)
//            }
//        }
//    }
}
