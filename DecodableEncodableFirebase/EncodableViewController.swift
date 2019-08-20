//
//  EncodableViewController.swift
//  DecodableEncodableFirebase
//
//  Created by Juan Meza on 8/20/19.
//  Copyright © 2019 Juan Meza. All rights reserved.
//

import UIKit
import CodableFirebase
import Firebase

class EncodableViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func actionEncodable(_ sender: Any) {
        
        do {
            
            
            let ref = Database.database().reference().childByAutoId()
            
            guard let uid = ref.key else {
                return
            }
            
            let provider = ProviderEnc(contact: ContactEnc(email: "jmeza@gmail.com", phone: 6862232425), info: InfoEnc(name: "Daniel Ramirez", about: "iOS Developer", price: 150))
            
            let data = try! FirebaseEncoder().encode(provider)
           
            
            Database.database().reference().child("Provider").child(uid).setValue(data)
            
            
            
        } catch {
            
            print (error)
        }
    }
    

}
