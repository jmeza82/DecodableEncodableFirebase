//
//  Decodable.swift
//  DecodableEncodableFirebase
//
//  Created by Juan Meza on 8/20/19.
//  Copyright © 2019 Juan Meza. All rights reserved.
//

import Foundation

struct Contact: Decodable {
    var email: String
    var phone: Int
    
    init(email: String, phone: Int) {
        self.email = email
        self.phone = phone
    }
    
    enum CondingKeys: String, CodingKey {
        case email = "email", phone
    }
}

struct Info: Decodable {
    
    var name: String
    var about: String
    var price: Int
    
    
    init(name: String, about: String, price: Int) {
        self.name = name
        self.about = about
        self.price = price
        
        
    }
    
    enum CodingKeys: String, CodingKey {
        case name = "name", about = "about", price
    }
}


struct Join: Decodable {
    var contact: Contact
    var info: Info
    
    init(contact: Contact, info: Info) {
        self.contact = contact
        self.info = info
    }
    
    enum CodingKeys: String, CodingKey {
        case contact = "contact", info = "info"
    }
    
}

struct Provider: Decodable {
    var join: Join
    var uid: String
    
    init(join: Join, uid: String) {
        self.uid = uid
        self.join = join
    }
    
    //enum CodingKeys: String, CodingKey {
      //  case join = "
    //}
    
    //enum CodingKeys: String, CodingKey {
      //  case uid = "uid"
    //}
}



