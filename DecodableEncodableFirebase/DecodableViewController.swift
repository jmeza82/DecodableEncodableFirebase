//
//  ViewController.swift
//  DecodableEncodableFirebase
//
//  Created by Juan Meza on 8/20/19.
//  Copyright © 2019 Juan Meza. All rights reserved.
//

import UIKit
import Firebase
import CodableFirebase

class DecodableViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        Database.database().reference().child("Provider").observeSingleEvent(of: .value, with: { snapshot in
            guard let value = snapshot.value else { return }
            print(value)
            
           
            do {
                let model = try FirebaseDecoder().decode(Provider.self, from: value)
                print(model)
                //print(model.info.name)
                
            } catch let error {
                print(error)
            }
        })
        /*URLSession.shared.dataTask(with: json!, completionHandler: {(data, response, error) in
            guard let data = data, error == nil else { return }
            
            print("Print data")
            print(data)
            
            do {
                
                let persons = try JSONDecoder().decode([Person].self, from: data)
                
                for person in persons {
                    print(person.name) // John
                    print(person.id) // Doe
                    print(person.address.street) // iOS Developer
                    print(person.address.geo.lat)
                    print(person.company.name)
                }
                
                
            } catch {
                print (error)
            }
            
        }).resume()*/
    }


}

