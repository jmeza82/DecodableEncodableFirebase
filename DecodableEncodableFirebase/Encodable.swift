//
//  Encodable.swift
//  DecodableEncodableFirebase
//
//  Created by Juan Meza on 8/20/19.
//  Copyright © 2019 Juan Meza. All rights reserved.
//

import Foundation


struct ContactEnc: Encodable {
    var email: String
    var phone: Int
    
    init(email: String, phone: Int) {
        self.email = email
        self.phone = phone
    }
    
}

struct InfoEnc: Encodable {
    
    var name: String
    var about: String
    var price: Int
    
    
    init(name: String, about: String, price: Int) {
        self.name = name
        self.about = about
        self.price = price
        
        
    }
    
    
}


struct ProviderEnc: Encodable {
    var contact: ContactEnc
    var info: InfoEnc
    
    init(contact: ContactEnc, info: InfoEnc) {
        self.contact = contact
        self.info = info
    }
    
   
    
}
