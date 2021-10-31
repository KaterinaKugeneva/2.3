//
//  Model.swift
//  2.3
//
//  Created by Ekaterina Kugeneva on 30.10.2021.
//

import Foundation
import UIKit
class Users {
    //var usersArray = [[String]]()
    var username: String
    var userpassword: String
    var userInfo: String
    var userPicture: String
    var ageOfUser: String
    var cityOfUser: String
    init (_ userName: String, _  userPassword: String, _ userInformation: String, _ userPict: String, _ age: String, _ city:String
) {
        //usersArray.append([userName,userPassword])
        username = userName
        userpassword = userPassword
        userInfo = userInformation
        userPicture = userPict
        ageOfUser = age
        cityOfUser = city
    
    }
    
    
}

var user = Users ("User","Password","Sit, stay, aport","Image","3","Moscow")
