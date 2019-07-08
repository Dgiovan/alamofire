//
//  ViewController.swift
//  AlamofireExample
//
//  Created by Josue J Maqueda Flores on 3/30/19.
//  Copyright © 2019 Josue J Maqueda Flores. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool)
    {
        super.viewDidAppear(animated)
        self.getUsers()
    }
    
    private func getUsers()
    {
        let url = URL(string: "http://192.168.0.144:9090/mobile-studio/curso-sabatino/json-demos/usuarios.json")!
        AsyncClient.getRequestExecute(url) { (responseData:DataUsers) in
            for user in responseData.data?.usuarios ?? []
            {
                print(user.pass)
                print(user.usuario)
                print("_____")
            }
        }
    }


}

